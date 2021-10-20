SinOsc s;

60.0 => float fund;

// get name
"test.wav" => string fn;

WvOut w;
fn => w.wavFilename;

s => dac.chan(0) => w;;
// temporary workaround to automatically close file on remove-shred
null @=> w;


10::second => now;
