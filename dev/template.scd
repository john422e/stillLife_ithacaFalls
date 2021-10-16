// 1. server config
// 2. initialize global variables
// 3. define piece-specific functions
// 4. register functions with ServerBoot/Quit/Tree
// 5. boot server
// 6. anything else requiring a booted server

// -------------------------------
// 1. server config
s = Server.local;
//ServerOptions.devices;
s.options.outDevice_(
	"MacBook Pro Speakers"
);
s.options.numOutputBusChannels_(2);
s.options.sampleRate_(48000);
s.options.memSize_(2.pow(20)); // roughly a gig of memory
// cleanup
s.newBusAllocators;
ServerBoot.removeAll;
ServerTree.removeAll;
ServerQuit.removeAll;


// 2. initialize global variables
~out = 0; // hardware output
~path = PathName(thisProcess.nowExecutingPath).parentPath ++ "../audio/trimmed/normalized/";

// 3. define piece-specific functions
~makeBuffers = {
	b = Dictionary.new;
	PathName(~path).entries.do{
		arg entry, i;
		b.add(
			i.asSymbol ->
			Buffer.read(s, entry.fullPath);
		);
	};
};

~cleanup = {
	s.newBusAllocators;
	ServerBoot.removeAll;
	ServerTree.removeAll;
	ServerQuit.removeAll;
};

~makeNodes = { // makes desired synths
	s.bind({
		~mainGrp = Group.new;
	});
};

(
~makeEvents = {
	e = Dictionary.new;
	e.add(\event1 -> { "event1".postln; });
	e.add(\event2 -> { "event2".postln; });
	e.add(\event3 -> { "event3".postln; });
};
)

// could make a dictionary of busses here too

// 4. register functions with ServerBoot/Quit/Tree
ServerBoot.add(~makeBuffers);
//ServerBoot.add(~makeBusses);
ServerQuit.add(~cleanup);

// 5. boot server
s.waitForBoot( {
	// will trigger ServerBoot registered functions first
	s.sync; // wait for them to finish
	// add synthDefs
	SynthDef.new( \sin, {
		arg freq=200, amp=0.5, gate=1, pan=0, out=0;
		var env, sig;
		env = EnvGen.kr( Env.asr, gate);
		sig = SinOsc.ar(freq, mul: amp);
		sig = Pan2.ar(sig, pan) * env;
		Out.ar(out, sig);
	}).add;
});
)
s.quit;

t = TempoClock.new;
t.stop;
t.play;
t.schedAbs(5, { "HEY".postln; });

Routine