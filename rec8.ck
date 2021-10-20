// chuck this with other shreds to record to file
// example> chuck foo.ck bar.ck rec (see also rec2.ck)

// arguments: rec:<filename>

// get name
//me.arg(0) => string filename;
//if( filename.length() == 0 ) "foo.wav" => filename;
"1.wav" => string fn1;
"2.wav" => string fn2;
"3.wav" => string fn3;
"4.wav" => string fn4;
"5.wav" => string fn5;
"6.wav" => string fn6;
"7.wav" => string fn7;
"8.wav" => string fn8;

WvOut2 w1;
WvOut2 w2;
WvOut2 w3;
WvOut2 w4;

// pull samples from the dac
dac.chan(0) => w1 => blackhole;
dac.chan(1) => w1 => blackhole;
dac.chan(2) => w2 => blackhole;
dac.chan(3) => w2 => blackhole;
dac.chan(4) => w3 => blackhole;
dac.chan(5) => w3 => blackhole;
dac.chan(6) => w4 => blackhole;
dac.chan(7) => w4 => blackhole;
//dac.chan(4) => Gain g5 => WvOut w5 => blackhole;
//dac.chan(5) => Gain g6 => WvOut w6 => blackhole;
//dac.chan(6) => Gain g7 => WvOut w7 => blackhole;
//dac.chan(7) => Gain g8 => WvOut w8 => blackhole;

// this is the output file name
fn1 => w1.wavFilename;
fn2 => w2.wavFilename;
fn3 => w3.wavFilename;
fn4 => w4.wavFilename;
//fn5 => w5.wavFilename;
//fn6 => w6.wavFilename;
//fn7 => w7.wavFilename;
//fn8 => w8.wavFilename;

<<<"writing to file:", "'" + w1.filename() + "'">>>;
// any gain you want for the output

.99 => float gainVal;



0 => int second_i;
1086 => int recLength;


// temporary workaround to automatically close file on remove-shred
null @=> w1;
null @=> w2;
null @=> w3;
null @=> w4;
//null @=> w5;
//null @=> w6;
//null @=> w7;
//null @=> w8;

//15 => recLength; // testing, REMOVE

// infinite time loop...
// ctrl-c will stop it, or modify to desired duration
while( second_i < recLength ) {
	second_i++;
	1::second => now;
}
