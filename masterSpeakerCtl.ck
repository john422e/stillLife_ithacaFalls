// master time vars
0.5 => float timeLapse; // advance time by 0.5 seconds
0.0 => float masterTick; // current time value
0.0 => float sectionTick;
1080 => float pieceLength;
//200 => float pieceLength;
0 => int eventBool;
0 => int eventNum; // 74 total events

/*
event key:
0 = all off 
1 = phase A
2 = phase B
3 = phase C
4 = all off, except Field 5 ON
*/

[0, 0, 0, 0] @=> int partStates[]; // the current state of each part, only CHANGES will trigger events

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


// do 30 seconds
// then start counting 12.5" for 7.5 minutes
// do 2 minutes
// then start counting 12.5" for 7.5 minutes
// do 30 seconds

// GLOBAL times: 0, 8:00 (480), 
// A section = 30 - 8:00 (480), 10:00 (600) - 17:30 (1050)

// 

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