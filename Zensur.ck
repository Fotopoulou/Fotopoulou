SawOsc osc1=> ADSR env1 => NRev rev3 => dac;
rev3 => Delay del1 => NRev rev1 => dac.left;
rev3 => Delay del2 => NRev rev2 => dac.right;
del1 => del2;
del2 => del1;
1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.2 => del1.gain;
0.2 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

48 => int offset;
int position;

[0,4,6,7] @=> int major[];
[0,3,6,7] @=> int minor[];
0.3 => osc1.gain;
[0, 12, 24] @=> int positions[];

for(0 => int i; i < 8; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

0.3 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// 60 => int offset;


0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;
// 3:: second / 2 => dur beat;
(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;


0.2 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// reset 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// reset 48 => int offset;


0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

//reset SqrOsc osc1 => ADSR env1 => NRev rev3 => dac;

del1 => del2;
del2 => del1;

(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.1 => del1.gain;
0.1 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;





0.2 => osc1.gain;


for(0 => int i; i < 8; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

0.3 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// 60 => int offset;


0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;
// 3:: second / 2 => dur beat;
(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;


0.2 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// reset 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// reset 48 => int offset;


0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



// reset PulseOsc osc1 =>ADSR env1 => NRev rev3 => dac;

// reset no delay;
del1 => del2;
del2 => del1;
// reset beat 1:: second / 2 => dur beat;
// reset ADSR (2::ms, beat/ 4, 0, 1,5::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// reset offset 40 => int offset;



0.3 => osc1.gain;


for(0 => int i; i < 8; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

0.3 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.3 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;

// 60 => int offset;


0.3 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;
// 3:: second / 2 => dur beat;
(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;


0.2 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.2 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}




del1 => del2;
del2 => del1;
// reset 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;

// reset 48 => int offset;


0.1 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

// reset SawOSc osc1 => ADSR env1 => NRev rev3 => dac;


del1 => del2;
del2 => del1;

(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;




0.1 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;

0.1 => osc1.gain;

for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;
// 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;

// 60 => int offset;


0.1 => osc1.gain;


for(0 => int i; i < 4; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;
// 3:: second / 2 => dur beat;
(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;


0.1 => osc1.gain;

for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i <2; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;
// reset 1:: second / 2 => dur beat;
(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.1 => rev1.mix => rev2.mix => rev3.mix;

// reset 48 => int offset;


0.1 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(1::ms, beat/ 8, 0, 1::ms) => env1.set;

0.04 => del1.gain;
0.04 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.05 => rev1.mix => rev2.mix => rev3.mix;




0.08 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.04 => del1.gain;
0.04 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.05 => rev1.mix => rev2.mix => rev3.mix;

0.08 => osc1.gain;

for(0 => int i; i < 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}



del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.2 => rev1.mix => rev2.mix => rev3.mix;



0.1 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((5+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.05 => rev1.mix => rev2.mix => rev3.mix;



0.08 => osc1.gain;


for(0 => int i; i < 2; i++)
{
    Std.mtof((9+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}

del1 => del2;
del2 => del1;

(beat/ 4, beat/ 8, 0, 1::ms) => env1.set;

0.05 => del1.gain;
0.05 => del2.gain;

beat => del1.max => del2.max;
beat/4 => del1.delay;
beat/2 => del2.delay;
0.05 => rev1.mix => rev2.mix => rev3.mix;



0.08 => osc1.gain;


for(0 => int i; i <= 2; i++)
{
    Std.mtof((14+1) + offset + position) =>osc1.freq;
    1 => env1.keyOn;
    
    beat => now;
}


