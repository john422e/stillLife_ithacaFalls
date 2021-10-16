/*
KEEP THIS AS MASTER AND JUST COPY FOR EACH PART
SET THE DESIRED ARRAY TO 'freqs' on line 86
*/

// ALTO FLUTE
// [times, freqs] (includes 3 seconds of silence at the beginning of every section)
[
[0.0, 0.0],                                      // beginning
[30.0, 0.0], [33.0, 187.92], [42.5, 188.0],      // 1
[105.0, 0.0], [108.0, 149.86], [155.0, 150.0],   // 2
[180.0, 0.0], [183.0, 169.86], [230.0, 168.6],   // 3
[255.0, 0.0], [258.0, 103.18], [305.0, 104.08],  // 4
[330.0, 0.0], [333.0, 128.24], [342.5, 129.12],  // 5
[405.0, 0.0], [408.0, 151.2], [417.5, 151.28],   // 6
[480.0, 0.0],                                    // middle
[600.0, 0.0], [603.0, 194.67], [637.5, 194.56],  // 7
[675.0, 0.0], [678.0, 171.15], [712.5, 171.16],  // 8
[750.0, 0.0], [753.0, 232.32], [762.5, 185.08],  // 9
[825.0, 0.0], [828.0, 156.4], [875.0, 156.4],    // 10
[900.0, 0.0], [903.0, 202.64], [912.5, 151.87],  // 11
[975.0, 0.0], [978.0, 152.56], [1012.5, 152.4],  // 12
[1050.0, 0.0],
[1080.0, 0.0]                                    // end
] @=> float freqs1[][];

// VIOLA
// [times, freqs] (includes 3 seconds of silence at the beginning of every section)
[ 
[0.0, 0.0],                                      // beginning
[30.0, 0.0], [33.0, 153.88], [80.0, 153.92],     // 1
[105.0, 0.0], [108.0, 154.8], [117.5, 154.72],   // 2
[180.0, 0.0], [183.0, 160.91], [217.5, 160.92],  // 3
[255.0, 0.0], [258.0, 180.88], [267.5, 180.72],  // 4
[330.0, 0.0], [333.0, 183.23], [367.5, 183.04],  // 5
[405.0, 0.0], [408.0, 155.95], [455.0, 156.08],  // 6
[480.0, 0.0],                                    // middle
[600.0, 0.0], [603.0, 177.97], [637.5, 178.0],   // 7
[675.0, 0.0], [678.0, 154.32], [687.5, 154.4],   // 8
[750.0, 0.0], [753.0, 184.0], [775.0, 184.16],   // 9
[825.0, 0.0], [828.0, 163.73], [862.5, 163.76],  // 10
[900.0, 0.0], [903.0, 186.51], [937.5, 186.4],   // 11
[975.0, 0.0], [978.0, 172.24], [987.5, 171.92],  // 12
[1050.0, 0.0],
[1080.0, 0.0]                                    // end
] @=> float freqs2[][];

// CLARINET
// [times, freqs] (includes 3 seconds of silence at the beginning of every section)
[ 
[0.0, 0.0],                                      // beginning
[30.0, 0.0], [33.0, 223.92], [80.0, 224.08],     // 1
[105.0, 0.0], [108.0, 199.2], [117.5, 199.54],   // 2
[180.0, 0.0], [183.0, 100.27], [217.5, 100.4],   // 3
[255.0, 0.0], [258.0, 183.72], [305.0, 184.32],  // 4
[330.0, 0.0], [333.0, 128.18], [380.0, 128.16],  // 5
[405.0, 0.0], [408.0, 220.66], [455.0, 220.93],  // 6
[480.0, 0.0],                                    // middle
[600.0, 0.0], [603.0, 195.31], [637.5, 195.2],   // 7
[675.0, 0.0], [678.0, 175.2], [700.0, 175.48],   // 8
[750.0, 0.0], [753.0, 163.15], [787.5, 162.96],  // 9
[825.0, 0.0], [828.0, 207.25], [862.5, 206.32],  // 10
[900.0, 0.0], [903.0, 131.28], [912.5, 131.09],  // 11
[975.0, 0.0], [978.0, 135.5], [1025.0, 135.4],   // 12
[1050.0, 0.0],
[1080.0, 0.0]                                    // end
] @=> float freqs3[][];

// CELLO
// [times, freqs] (includes 3 seconds of silence at the beginning of every section)
[ 
[0.0, 0.0],                                      // beginning
[30.0, 0.0], [33.0, 74.56], [42.5, 75.36],       // 1
[105.0, 0.0], [108.0, 148.92], [130.0, 149.2],   // 2
[180.0, 0.0], [183.0, 70.04], [205.0, 70.11],    // 3
[255.0, 0.0], [258.0, 65.92], [305.0, 65.68],    // 4
[330.0, 0.0], [333.0, 137.6], [342.5, 137.8],    // 5
[405.0, 0.0], [408.0, 120.24], [417.5, 119.86],  // 6
[480.0, 0.0],                                    // middle
[600.0, 0.0], [603.0, 74.56], [612.5, 74.56],    // 7
[675.0, 0.0], [678.0, 120.48], [700.0, 120.84],  // 8
[750.0, 0.0], [753.0, 65.73], [787.5, 65.16],    // 9
[825.0, 0.0], [828.0, 71.52], [875.0, 71.36],    // 10
[900.0, 0.0], [903.0, 155.47], [937.5, 154.28],  // 11
[975.0, 0.0], [978.0, 65.98], [1025.0, 66.24],   // 12
[1050.0, 0.0],
[1080.0, 0.0]                                    // end
] @=> float freqs4[][];

freqs1 @=> float freqs[][];

// -------------------------------------------------------

// sound chain
SinOsc s => Envelope e => LPF f => Gain g => dac;

// osc
OscIn in;
OscMsg msg;
10001 => in.port;
in.listenAll;

// initialize sound settings
1.0 => g.gain;
0.0 => float freq;
80.0 => float spkrThresh;
500 => f.freq;
0.4 => f.Q;
0.5 => e.time;
0 => int soundOn;

// sensor vars
25.0 => float thresh; // distance thresh (lower values trigger sound)
10.0 => float distOffset; // set for each sensor to compensate for irregularities
float dist;
float amp;

// master time vars
0.5 => float timeLapse; // advance time by 0.5 seconds
0.0 => float second_i; // current time value
1.0 => float rate; // 1 = real time, higher vals to speed up for testing
1080 => float pieceLength;
0 => int eventIndex;
float displayMinute;
float displaySecond;
5 => int countDown; // startup sound

// FUNCTIONS ---------------------------------------------------

fun float normalize( float inVal, float x1, float x2 ) {
	/*
	for standard mapping:
	x1 = min, x2 = max
	inverted mapping:
	x2 = min, x1 = max
	*/
	// catch out of range numbers and cap
	if( x1 > x2 ) { // for inverted ranges
		if( inVal < x2 ) x2 => inVal;
		if( inVal > x1 ) x1 => inVal;
	}
	// normal mapping
	else {
		if( inVal < x1 ) x1 => inVal;
		if( inVal > x2 ) x2 => inVal;
	}
	(inVal-x1) / (x2-x1) => float outVal;
	return outVal;
}

fun void freqChange( float newFreq ) {
	//e.keyOff(); // synth off
	//0.5::second => now;
	if( newFreq <= spkrThresh ) newFreq*2 => newFreq; // keep this octave transposer for low notes?
	newFreq => s.freq; // set new freq
	//0.5::second => now;
	//e.keyOn(); // turn on
}

fun void get_reading() {
	while( second_i < pieceLength ) {
		// check for osc messages
		in => now;
		while( in.recv(msg) ) {
			// ultrasonic sensor distance
			if( msg.address == "/distance" ) {
				msg.getFloat(0) => dist;
				<<< "/distance", dist >>>;
				// turn on sound if value below thresh and get tone
				if( dist < thresh && dist > 0.0 ) {
					// <<< "sound on" >>>;
					1 => soundOn;
					normalize(dist, thresh, distOffset) => amp;
					<<< amp >>>;
					amp => e.target;
					spork ~ e.keyOn();
				}
				else { // no sound
					0 => soundOn;
					spork ~ e.keyOff();
				}
			}
		}
	}
}

// FOR REHEARSAL -- START AT SECTION NUMBERS ------------------------
// adjust starting position if command line argument present
// user provides section number: 
[1.0, 2.0, 3.0, 4.0,  5.0,  6.0,  6.5, 7.0,  8.0,  9.0,  10.0, 11.0, 12.0] @=> float sectionLabels[];
// corresponding event indexes: 
[1,   4,   7,   10,   13,   16,   19,  20,   23,   26,   29,   32,   35] @=> int sectionIndexes[];
Std.atoi(me.arg(0)) => float userSection;
if( userSection > 12 ) userSection / 10 => userSection; // stupid trick to get 6.5 from '65'
<<< "USER ENTERED:", userSection >>>;
// lookup sectionLabel
-1 => int eventLookup;
1 => int searching;
for( 0 => int i; i < sectionLabels.cap(); i++) {
	if( userSection == sectionLabels[i] ) sectionIndexes[i] => eventLookup;
	//<<< userSection, sectionLabels[i], userSection == sectionLabels[i] >>>;
}
<<< "EVENT LOOKUP:", eventLookup >>>;

if( eventLookup >= 0 ) { 
	eventLookup => eventIndex; // set correct eventIndex
	freqs[eventIndex][0] => second_i; // set correct time
	<<< "start at time:", second_i, "event:", eventIndex >>>;
}
else <<< "NOT A VALID SECTION LABEL, STARTING FROM BEGINNING" >>>;

// STARTUP SOUND ---------------------------------------------------
0.2 => s.gain;
0.01 => e.time;
for( 0 => int i; i < countDown; i++ ) {
	220 => s.freq;
	e.keyOn();
	0.5::second => now;
	e.keyOff();
	0.5::second => now;
}
1.0 => s.gain;
0.5 => e.time;

// MAIN PROGRAM ---------------------------------------------------

spork ~ get_reading(); // start sensor listener
<<< "STARTING FORM" >>>;

// loop for whole piece
while( second_i < pieceLength ) {
	//<<< eventIndex, freqs.cap() >>>;
    second_i / 60 => displayMinute;
    second_i % 60 => displaySecond;
    <<< "TIME:", Math.floor(displayMinute), displaySecond >>>;

    if( second_i == freqs[eventIndex][0] ) { // check for matching timeVal
        // set new freq
        freqs[eventIndex][1] => freq;
		spork ~ freqChange(freq);       
        1 +=> eventIndex; // increment eventIndex, do this last
    }
    
    // increment time, do this last
    timeLapse +=> second_i;
    (timeLapse/rate)::second => now;
}