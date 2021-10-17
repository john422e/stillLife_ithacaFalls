/*
 ----------- DEPRECATED? ------------------

event key:
0 = all off
1 = phase A
2 = phase B
3 = phase C
4 = all off, except Field 5 ON

// MASTER EVENT LIST
[
[4, 4, 4, 4],
[1, 1, 1, 1], [2, 1, 1, 2], [3, 1, 1, 3], [3, 1, 1, 3], [3, 2, 2, 3], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 2, 2, 1], [1, 2, 2, 2], [1, 3, 2, 3], [2, 3, 2, 3], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 2], [1, 2, 2, 2], [2, 2, 2, 2], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 2, 1, 1], [1, 3, 1, 1], [1, 3, 1, 1], [2, 3, 2, 2], [3, 3, 3, 3],
[1, 1, 1, 1], [2, 1, 1, 2], [2, 1, 1, 2], [2, 2, 1, 3], [2, 2, 2, 3], [3, 3, 3, 3],
[1, 1, 1, 1], [2, 1, 1, 2], [3, 1, 1, 2], [3, 1, 1, 2], [3, 2, 2, 2], [3, 3, 3, 3],
[0, 0, 0, 0], // make loop not check 12.5' time intervals here
[1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2], [2, 2, 2, 3], [2, 2, 3, 3], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 2, 1, 1], [1, 2, 2, 2], [2, 3, 2, 2], [2, 3, 3, 3], [3, 3, 3, 3],
[1, 1, 1, 1], [2, 1, 1, 1], [2, 2, 1, 1], [2, 3, 2, 2], [2, 3, 3, 2], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 2, 2, 1], [2, 3, 3, 2], [3, 3, 3, 3],
[1, 1, 1, 1], [2, 1, 2, 1], [2, 1, 2, 1], [2, 2, 2, 2], [3, 3, 3, 2], [3, 3, 3, 3],
[1, 1, 1, 1], [1, 2, 1, 1], [1, 2, 1, 1], [2, 2, 1, 1], [3, 3, 2, 2], [3, 3, 3, 3],
[4, 4, 4, 4],
[0, 0, 0, 0]
] @=> int events[][];
*/

// do 30 seconds
// then start counting 12.5" for 7.5 minutes
// do 2 minutes
// then start counting 12.5" for 7.5 minutes
// do 30 seconds

// GLOBAL times: 0, 8:00 (480),
// A section = 30 - 8:00 (480), 10:00 (600) - 17:30 (1050)

/*
structure: stereo to shotgun each time
*/

// ALTO FLUTE
// [times, pulseState] 0 = off, 1 = on, 2 = select( on or pulsing), 0.5 = fadeIn, 2.5 = fadeOut
[
[0.0, 0.5],                          				// beginning
[30.0, 1.0], [42.5, 1.5], [55.0, 2.0],			// 1
[105.0, 1.0], [155.0, 1.5], [167.5, 2.0],		// 2
[180.0, 1.0], [230.0, 1.5], [242.5, 2.0],		// 3
[255.0, 1.0], [305.0, 1.5], [317.5, 2.0],	 	// 4
[330.0, 1.0], [342.5, 1.5], [392.5, 2.0],		// 5
[405.0, 1.0], [417.5, 1.5], [430.0, 2.0],		// 6
[480.0, 0.0],                               // middle
[600.0, 1.0], [637.5, 1.5], [662.5, 2.0],		// 7
[675.0, 1.0], [712.5, 1.5], [737.5, 2.0], 	// 8
[750.0, 1.0], [762.5, 1.5], [812.5, 2.0],		// 9
[825.0, 1.0], [875.0, 1.5], [887.5, 2.0],   // 10
[900.0, 1.0], [912.5, 1.5], [950.0, 2.0], 	// 11
[975.0, 1.0], [1012.5, 1.5], [1025.0, 2.0], // 12
[1050.0, 2.5],
[1080.0, 0.0]                               // end
] @=> float spkrs1[][];

// VIOLA
// [times, pulseState] 0 = off, 1 = on, 2 = select( on or pulsing), 0.5 = fadeIn, 2.5 = fadeOut
[
[0.0, 0.5],                                 // beginning
[30.0, 1.0], [80.0, 1.5], [92.5, 2.0],    	// 1
[105.0, 1.0], [117.5, 1.5], [142.5, 2.0],  	// 2
[180.0, 1.0], [217.5, 1.5], [242.5, 2.0], 	// 3
[255.0, 1.0], [267.5, 1.5], [280.0, 2.0],		// 4
[330.0, 1.0], [367.5, 1.5], [392.5, 2.0],		// 5
[405.0, 1.0], [455.0, 1.5], [467.5, 2.0],		// 6
[480.0, 0.0],                               // middle
[600.0, 1.0], [637.5, 1.5], [662.5, 2.0],		// 7
[675.0, 1.0], [687.5, 1.5], [712.5, 2.0],  	// 8
[750.0, 1.0], [775.0, 1.5], [787.5, 2.0], 	// 9
[825.0, 1.0], [862.5, 1.5], [875.0, 2.0], 	// 10
[900.0, 1.0], [937.5, 1.5], [950.0, 2.0],	  // 11
[975.0, 1.0], [987.5, 1.5], [1025.0, 2.0], 	// 12
[1050.0, 2.5],
[1080.0, 0.0]                               // end
] @=> float spkrs2[][];

// CLARINET
// [times, pulseState] 0 = off, 1 = on, 2 = select( on or pulsing), 0.5 = fadeIn, 2.5 = fadeOut
[
[0.0, 0.5],                                 // beginning
[30.0, 1.0], [80.0, 1.5], [92.5, 2.0],	    // 1
[105.0, 1.0], [117.5, 1.5], [142.5, 2.0], 	// 2
[180.0, 1.0], [217.5, 1.5], [242.5, 2.0],  	// 3
[255.0, 1.0], [305.0, 1.5], [317.5, 2.0], 	// 4
[330.0, 1.0], [380.0, 1.5], [392.5, 2.0], 	// 5
[405.0, 1.0], [455.0, 1.5], [467.5, 2.0],		// 6
[480.0, 1.0],                								// middle
[600.0, 1.0], [637.5, 1.5], [650.0, 2.0],  	// 7
[675.0, 1.0], [700.0, 1.5], [725.0, 2.0],  	// 8
[750.0, 1.0], [787.5, 1.5], [800.0, 2.0], 	// 9
[825.0, 1.0], [862.5, 1.5], [875.0, 2.0], 	// 10
[900.0, 1.0], [912.5, 1.5], [950.0, 2.0], 	// 11
[975.0, 1.0], [1025.0, 1.5], [1037.5, 2.0], // 12
[1050.0, 2.5],
[1080.0, 0.0]                               // end
] @=> float spkrs3[][];

// CELLO
// [times, pulseState] 0 = off, 1 = on, 2 = select( on or pulsing), 0.5 = fadeIn, 2.5 = fadeOut
[
[0.0, 0.5],                                 // beginning
[30.0, 1.0], [42.5, 1.5], [55.0, 2.0],      // 1
[105.0, 1.0], [130.0, 1.5], [142.5, 2.0],  	// 2
[180.0, 1.0], [205.0, 1.5], [242.5, 2.0],   // 3
[255.0, 1.0], [305.0, 1.5], [317.5, 2.0],   // 4
[330.0, 1.0], [342.5, 1.5], [367.5, 2.0],   // 5
[405.0, 1.0], [417.5, 1.5], [467.5, 2.0],		// 6
[480.0, 0.0],                               // middle
[600.0, 1.0], [612.5, 1.5], [637.5, 2.0],   // 7
[675.0, 1.0], [700.0, 1.5], [725.0, 2.0], 	// 8
[750.0, 1.0], [787.5, 1.5], [812.5, 2.0],  	// 9
[825.0, 1.0], [875.0, 1.5], [887.5, 2.0],   // 10
[900.0, 1.0], [937.5, 1.5], [962.5, 2.0], 	// 11
[975.0, 1.0], [1025.0, 1.5], [1037.5, 2.0], // 12
[1050.0, 2.5],
[1080.0, 0.0]                               // end
] @=> float spkrs4[][];

[spkrs1, spkrs2, spkrs3, spkrs4] @=> float allEvents[][][];

// master time vars
0.5 => float timeLapse; // advance time by 0.5 seconds
0.0 => float second_i;
1.0 => float rate;
//0.0 => float masterTick; // current time value
//0.0 => float sectionTick;
1080 => float pieceLength;
//200 => float pieceLength;
0 => int eventBool;
0 => int eventNum; // 74 total events
[0, 0, 0, 0] @=> int eventIndexes[]; // store current event index for each spkr part
float displayMinute;
float displaySecond;
5 => int countDown; // startup

// SETUP --------------------------------------------------------
// this directory
me.dir() => string path;
path + "../audio/trimmed/normalized/" => path;
//<<< path >>>;
8 => int channels;
10 => int files;
string stereoFilenames[5];
string shotgunFilenames[5];

path + "1_stereo.wav" => stereoFilenames[0];
path + "2_stereo.wav" => stereoFilenames[1];
path + "3_stereo.wav" => stereoFilenames[2];
path + "4_stereo.wav" => stereoFilenames[3];
path + "5_stereo.wav" => stereoFilenames[4];

path + "1_shotgun.wav" => shotgunFilenames[0];
path + "2_shotgun.wav" => shotgunFilenames[1];
path + "3_shotgun.wav" => shotgunFilenames[2];
path + "4_shotgun.wav" => shotgunFilenames[3];
path + "5_shotgun.wav" => shotgunFilenames[4];

SndBuf stereoBufs[files];
SndBuf shotgunBufs[files];
Envelope stereoEnvs[files];
Envelope shotgunEnvs[files];
Gain stereoGains[files];
Gain shotgunGains[files];
Pan2 pans[files];
// can make these into arrays if i need to eq between speakers
0.9 => float stereoGainLevel;
0.7 => float shotgunGainLevel;

// set outputs
0 => int chanOffset;
[0, 2, 4, 6] @=> int outputs[];
// set gains
for( 0 => int i; i < stereoGains.cap(); i++ ) {
	stereoGainLevel => stereoGains[i].gain;
	shotgunGainLevel => shotgunGains[i].gain;
}
1.0 => stereoGains[4].gain;


int channel;

// setup soundchains
// stereo
for( 0 => int i; i < 5; i++ ) {
	// STEREO
	// assign first four separately
	if( i < 4 ) {
		// go to each set individually
		// stereo
		chanOffset + outputs[i] => channel;
		//<<< "CHANNEL", channel >>>;
		stereoBufs[i] => stereoEnvs[i] => stereoGains[i] => dac.chan(channel);
		stereoFilenames[i] => stereoBufs[i].read;
		// shotgun
		shotgunBufs[i] => shotgunEnvs[i] => shotgunGains[i] => dac.chan(channel);
		shotgunFilenames[i] => shotgunBufs[i].read;
		0 => pans[i].pan; // center pan
	}
	if( i == 4) {
		// assign to all speakers
		//<<< "FIELD 5" >>>;
		stereoBufs[i] => stereoEnvs[i] => stereoGains[i];
		stereoGains[i] => dac.chan(0);
		stereoGains[i] => dac.chan(2);
		stereoGains[i] => dac.chan(4);
		stereoGains[i] => dac.chan(6);
		stereoFilenames[i] => stereoBufs[i].read;
	}
}

// temp vars
int checkIndex;
float spkrState;
int pulseChoice;
int bufChoice;
float pulseDuration;

// FUNCTIONS ---------------------------------------------------
fun void fadeIn( Envelope e, float preFade, float fadeTime ) {
	preFade::second => now;
	fadeTime => e.time;
	e.keyOn();
	fadeTime::second => now;
	0.1 => e.time;
}

fun void fadeOut( Envelope e, float preFade, float fadeTime ) {
	preFade::second => now;
	fadeTime => e.time;
	e.keyOff();
	fadeTime::second => now;
	0.1 => e.time;
}

fun void pulseEnv( Envelope e, float duration ) {
	Math.random2(500, 4000) => int pulseMS;
	pulseMS / 1000 => float pulseSecs;
	(duration / pulseSecs) $ int => int totalPulses;
	for( 0 => int i; i < totalPulses; i++ ) {
		e.keyOff();
		(pulseSecs/2)::second => now;
		e.keyOn();
		(pulseSecs/2)::second => now;
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

<<< "STARTING FORM" >>>;
//5::second => now; // startup
// start with field 5 on
stereoEnvs[4].keyOn();

// loop for whole piece
while( second_i < pieceLength ) {
	//<<< eventIndex, freqs.cap() >>>;
    second_i / 60 => displayMinute;
    second_i % 60 => displaySecond;
		<<< eventIndexes[0] >>>;
		if( displaySecond % 15 == 0) {
			<<< "TIME:", Math.floor(displayMinute), displaySecond >>>;
			}
		// turn off field 5 at 30 seconds
		if( second_i == 30.0 ) stereoEnvs[4].keyOff();
		// turn on field 5 at 17:30
		if( second_i == 1050.0 ) stereoEnvs[4].keyOn();
		// turn off field 5 at 18:00 (end of piece)
		if( second_i == 1080.0 ) stereoEnvs[4].keyOff();

		// check for events in all 4 spkrs
		for( 0 => int i; i < eventIndexes.cap(); i++ ) {
			eventIndexes[i] => checkIndex;
			if( second_i == allEvents[i][checkIndex][0] ) {
				<<< "SPEAKER STATE CHANGE" >>>;
				allEvents[i][checkIndex][1] => spkrState;
				if( spkrState == 0.0 ) {
					// everything off
					shotgunEnvs[i].keyOff();
					stereoEnvs[i].keyOff();
				}
				if( spkrState == 0.5 ) spork ~ fadeIn(stereoEnvs[i], 10.0, 19.0); // fadeIn
				if( spkrState == 1.0 ) {
					// stereo steady
					shotgunEnvs[i].keyOff(); // all shotgun bufs off
					stereoEnvs[i].keyOn(); // all stereo bufs on
				}
				if( spkrState == 1.5 ) {
					// stereo or shotgun, pulsing or steady
					Math.random2(0, 1) => bufChoice; // 0 = stereo, 1 = shotgun
					Math.random2(0, 2) => pulseChoice; // 0 = off, 1 = on, 2 = pulse
					if( pulseChoice == 0 ) stereoEnvs[i].keyOff();
					if( pulseChoice == 1 ) {
						if( bufChoice == 1 ) {
							stereoEnvs[i].keyOff();
							shotgunEnvs[i].keyOn();
						}
					}
					if( pulseChoice == 2 ) {
						allEvents[i][checkIndex+1][0] - second_i => pulseDuration;
						if( bufChoice == 0 ) spork ~ pulseEnv( stereoEnvs[i], pulseDuration);
						else {
							stereoEnvs[i].keyOff();
							spork ~ pulseEnv( shotgunEnvs[i], pulseDuration);
						}
					}
				}
				if( spkrState == 2.0 ) {
					// shotgun, pulsing or steady
					stereoEnvs[i].keyOff(); // stereo off at this point no matter what
					Math.random2(0, 2) => pulseChoice; // 0 = off, 1 = on, 2 = pulse
					if( pulseChoice == 0 ) shotgunEnvs[i].keyOff();
					if( pulseChoice == 1 ) shotgunEnvs[i].keyOn();
					if( pulseChoice == 2 ) {
						allEvents[i][checkIndex+1][0] - second_i => pulseDuration;
						spork ~ pulseEnv( shotgunEnvs[i], pulseDuration);
					}
				}
				if( spkrState == 2.5 ) spork ~ fadeOut(shotgunEnvs[i], 0.5, 29.0); // fadeOut
				// increment eventIndex last
				eventIndexes[i]++;
			}
		}
    // increment time, do this last
    timeLapse +=> second_i;
    (timeLapse/rate)::second => now;
}

/*
// MAIN PROGRAM LOOP
while( masterTick < pieceLength+1 ) {
    //<<< "MASTER TIME", masterTick, "SECTION TIME", sectionTick >>>;

    // first check for global section change events
    if( masterTick == 0 ) {
        <<< masterTick, "BEGINNING EVENT: turn on field 5" >>>;
        1 => eventBool;
        0 => sectionTick;
    }
    else if ( masterTick == 30 ) {
        <<< masterTick, "START A SECTION" >>>;
        1 => eventBool;
    }
    else if ( masterTick == 480 ) {
        <<< masterTick, "B SECTION START: turn everything off" >>>;
        1 => eventBool;
    }
    else if ( masterTick == 600 ) {
        <<< masterTick, "B SECTION END/A SECTION START: turn things on again" >>>;
        1 => eventBool;
        0 => sectionTick;
    }
    else if ( masterTick == 1050 ) {
        <<< masterTick, "A SECTION END, turn on field 5" >>>;
        1 => eventBool;
    }
    else if ( masterTick == 1080 ) {
        <<< masterTick, "END OF PIECE" >>>;
        1 => eventBool;
    }

    // NOW check if in subSection times (00:30 - 8:00 or 10:00 - 17:30)
    if( (masterTick >= 30 && masterTick < 480) || (masterTick >= 600 && masterTick < 1050) ) {
        // if at 12.5 second interval
        if( sectionTick % 12.5 == 0 ) {
            <<< masterTick, sectionTick, "SECTION" >>>;
            1 => eventBool;
        }
        timeLapse +=> sectionTick;
    }

    // unpack event data
    if( eventBool == 1 ) {
        <<< "EVENT:", eventNum, "||", events[eventNum][0], events[eventNum][1], events[eventNum][2], events[eventNum][3] >>>;
        <<< "-----------" >>>;

        1 +=> eventNum; // advance iterator
        0 => eventBool; // turn off again
    }

    // advance iterator, advance time
    timeLapse +=> masterTick;
    timeLapse::second => now;
}
*
