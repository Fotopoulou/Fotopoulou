0.5::second / 1 => dur beat;

TriOsc osc => dac;

200 => osc.freq;
0.5 => osc.gain;

beat => now;

300 => osc.freq;

beat => now;

400 => osc.freq;

beat => now;

for(20 => int i; i < 127; i++)
{
    Std.mtof(i) => osc.freq;
    <<< i, Std.mtof(i) >>>;
    100::ms => now;
}

for(800 => int i; i > 0; i--)
{
    i => osc.freq;
    <<< i >>>;
    2::ms => now;
}


[110, 220, 440, 660, 770, 880, 1320, 1430]@=> int frequencies [];

for(0 => int i; i <8; i++)
{
    frequencies [i] => osc.freq;
    200::ms => now;
}

[60, 63, 67, 71, 72, 75, 79, 83]@=> int pitsches[];
for(0 => int i; i < pitsches.cap();i++)
{
    Std.mtof(pitsches [i]) => osc.freq;
    200::ms => now;
}



[0, 4, 7, 11, 12, 16, 21, 25, 29, 32, 26, 37]@=> int major [];
[0, 3, 7, 11, 12, 15, 21, 25, 28, 32, 36, 37]@=> int minor [];

48 => int offset;
int position;

150::ms => dur eighth;

for(1 => int i; i <= 2; i++)
{
    0 => position;
    for(int i; i< 3; i++)
    {
        for(int j; j < 2; j++)
        {
            Std.mtof(major[j] + offset + position) => osc.freq;
            eighth => now;
        }
    }
    
    3 => position;
    for(int i; i< 3; i++)
    {
        for(int j; j < 2; j++)
        {
            Std.mtof(minor[j] + offset + position) => osc.freq;
            eighth => now;
        }
    }
    
    5 => position;
    for(int i; i< 3; i++)
    {
        for(int j; j < 2; j++)
        {
            Std.mtof(major[j] + offset + position) => osc.freq;
            eighth => now;
        }
    }
    
    7 => position;
    for(int i; i< 3; i++)
    {
        for(int j; j < 2; j++)
        {
            Std.mtof(major[j] + offset + position) => osc.freq;
            eighth => now;
        }
    }
}

SinOsc s => dac;

0.5 =>osc.gain;

150::ms => dur fourth;

0 => position;
for(0 => int i; i <4; i++)
{
    1 => position;
    for(0 =>int i; i <3; i++)
    {
        Std.mtof (major [i] + offset + position) => osc.freq;
        fourth => now;
    }
}

4 => position;
for(0 => int i; i <4; i++)
{
    3 => position;
    for(0 =>int i; i <3; i++)
    {
        Std.mtof (major [i] + offset + position) => osc.freq;
        fourth => now;
    }
}
6 => position;
for(0 => int i; i <4; i++)
{
    5 => position;
    for(0 =>int i; i <2; i++)
    {
        Std.mtof (major [i] + offset + position) => osc.freq;
        fourth => now;
    }
}

TriOsc osc1 => ADSR env1 => dac;

0.2 => osc.gain;


(beat/2, beat/2, 0, 1::ms) => env1.set;



0 => position;

for(0 => int i; i < 4; i++)
{
    Std.mtof(minor[0] +offset + position) => osc.freq;
    beat => now;
    1 => env1.keyOn;
}

TriOsc osc2 => ADSR env2 => dac;

0.2 => osc.gain;


(2::ms, beat/8, 0, 1::ms) => env2.set;

0.1 => osc2.gain;


0 => position;

for(0 => int j; j < 4; j++)
{
    Std.mtof(minor[j] +offset + position+ 37) => osc.freq;
    1 => env2.keyOn;
    beat/ 8 => now;
}


SinOsc osc3 => ADSR env3 => dac;


(1::ms, beat/8, 0, 1::ms) => env1.set;
0.25 => osc.gain;

60 => offset;


for(0 => int i; i <3; i++)
{
    for(0 => int j; j < minor.cap(); j++)
    {
        Std.mtof(minor[j] + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat/16 => now;
    }
}

SinOsc osc4 => ADSR set => Pan2 pan => dac;

0.2 => osc4.gain;
0.5::second => dur beat1;

// set again A, D, S, and R
( 1::ms, beat1/4, 0, 1::ms) => env1.set;


60 => int offset1;
0 => int position1;

0 => pan.pan;


    for(0 => int i; i <4; i++)
    {
        Std.mtof( (12+15) + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat => now;
    }
    
    TriOsc osc6 => ADSR set1 => Pan2 pan1 => dac;
    
    0.2 => osc6.gain;
    1::second => dur beat2;
    //
    // set again A, D, S, and R
    ( 2::ms, beat1/8, 0, 2::ms) => env2.set;
    
    
    45 => int offset2;
    0 => int position2;
    
    0 => pan1.pan;
    
    
    for(0 => int i; i <4; i++)
    {
        Std.mtof( (12+12) + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat => now;
    }
    
    
    SqrOsc osc7 => ADSR set6 => Pan2 pan6 => dac;
    
    0.2 => osc7.gain;
    0.5::second => dur beat7;
    
    // set again A, D, S, and R
    ( 1::ms, beat7/4, 0, 1::ms) => env1.set;
    
    
    60 => int offset7;
    0 => int position7;
    
    0 => pan.pan;
    
    
    for(0 => int i; i <4; i++)
    {
        Std.mtof( (12+15) + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat => now;
    }
    
    SqrOsc osc8 => ADSR set7 => Pan2 pan7 => dac;
    
    0.2 => osc6.gain;
    1::second => dur beat8;
    //
    // set again A, D, S, and R
    ( 2::ms, beat1/8, 0, 2::ms) => env2.set;
    
    
    45 => int offset8;
    0 => int position8;
    
    0 => pan1.pan;
    
    
    for(0 => int i; i <4; i++)
    {
        Std.mtof( (12+12) + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat => now;
    }
    
    SinOsc osc5=> ADSR env5 => NRev rev3 => dac;
    rev3 => Delay del1 => NRev rev5 => dac.left;
    rev3 => Delay del2 => NRev rev2 => dac.right;
    del1 => del2;
    del2 => del1;
    // 3:: second / 2 => dur beat;
    (beat/ 4, beat/ 8, 0, 1::ms) => env1.set;
    
    0.5 => del1.gain;
    0.5 => del2.gain;
    
    beat => del1.max => del2.max;
    beat/4 => del1.delay;
    beat/2 => del2.delay;
    0.2 => rev5.mix => rev2.mix => rev3.mix;
    
    // 40 => int offset;
    // int position;
    
    // [0,4,6,7,12] @=> int major[];
    // [0,3,6,7,12] @=> int minor[];
    0.15 => osc1.gain;
    [0, 12, 24] @=> int positions[];
    
    for(0 => int i; i < 5; i++)
    {
        Std.mtof((14+1) + offset + position) =>osc5.freq;
        1 => env1.keyOn;
        
        beat => now;
    }    
   
    