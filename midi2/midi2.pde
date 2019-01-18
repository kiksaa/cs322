import arb.soundcipher.*;
SCScore score = new SCScore();
SoundCipher sc = new SoundCipher(this);

float[] pitches = {67, 69, 72, 67, 72, 69, 64, 69, 67, 64, 67, 69, 67, 64, 67, 69, 67, 64, 62, 64, 67, 69,//22
                     72, 67, 69, 72, 69, 67, 64, 62, 60, 69, 72, 67, 69, 67, 64, 62, 60, 62, 64, 67,//20
                     64, 62, 64, 67, 64, 62, 64, 67, 64, 67, 72, 69, 72, 74, 72, 67, 69, 72, 69, 67, 64, 62, 60,//23
                     72, 67, 72, 69, 72, 67, 72, 69, 72, 76, 72, 74, 72, 67, 72, 69, 74, 71, 69, 71, 67, 69,//22
                     72, 67, 72, 69, 72, 67, 72, 69, 72, 76, 72, 74, 72, 67, 72, 69, 72, 67, 72, 64, 67, 64, 62, 60};
float [] dynamics = {80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100,
                     80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80,
                     80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80,
                     80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100,
                     80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80, 80, 100, 80, 80};
float[] durations = {0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5 ,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,
                0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5,1,
                0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1,
                0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1, 0.5 , 1, 0.5, 1, 0.5,
                0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 0.5,0.5, 1, 0.5, 1, 0.5, 1, 0.5, 1};

 
sc.playPhrase(pitches, dynamics, durations);

for(int i=0; i< pitches.length ; i++) {
  //float p = score.pcRandom(60, 72, score.PENTATONIC);
  score.addNote(i, pitches[i], dynamics[i], durations[i]);
  //score.addNote(i+0.25,random(60, 100), 0.25); //Beat,pitch,dynamic,duration
  //score.addNote(i+0.5, p+7, random(60, 100), 0.25);
  //score.addNote(i+0.75, p+4, random(60, 100), 0.5);
}
float[] bassArticulations = new float[pitches.length];
float[] bassPans = new float[pitches.length];
for (int i=0; i< pitches.length; i++) {
  bassArticulations[i] = 0.8;
  bassPans[i] = 64;
}
score.addPhrase(1.0, 0.5,7.0,pitches,dynamics, durations,bassArticulations, bassPans);
score.addPhrase(0.50, 0.5,15.0,pitches,dynamics, durations,bassArticulations, bassPans);
score.addPhrase(1.25, 0.5,29.0,pitches,dynamics, durations,bassArticulations, bassPans);
score.play();
score.writeMidiFile("D:/com/cs322/midi2/music.mid");

//float[] bassPitches = new float[4];
//float[] bassDynamics = new float[4];
//float[] bassDurations = new float[4];
//float[] bassArticulations = new float[pitches.length];
//float[] bassPans = new float[pitches.length];
//for (int i=0; i<4; i++) {
//  //if (i<1) {
//  //  bassDurations[i] = 1;  
//  //  bassPitches[i] = 36;  
//  //} else {
//  //  bassDurations[i] = random(1) * 0.5 + 0.5;
//  //  bassPitches[i] = 36 + pitches[(int)(random(pitches.length))];
//  //}
//  //bassDynamics[i] = random(30) + 50;
//  bassArticulations[i] = 0.8;
//  bassPans[i] = 64;
//}

//score.addPhrase(0, 0, 34, pitches,dynamics, durations,bassArticulations, bassPans);
//// piano
//float chordPitches[] = new float[3];
//for (int i=0; i<3; i++) {
//  chordPitches[i] = 60 + pitches[(int)(random(pitches.length))];
//}
//score.addChord(1, 1, 0, chordPitches, 60, 2, 0.8, 64);
//score.addChord(3, 1, 0, chordPitches, 30, 0.25, 0.8, 64);

//score.play(3);





/*import arb.soundcipher.*;
SCScore score = new SCScore();

for(float i=0; i< 8; i++) {
  float p = score.pcRandom(60, 72, score.PENTATONIC);
  score.addNote(i, p, random(60, 100), 0.25); //Beat,pitch,dynamic,duration
  score.addNote(i+0.25, p+4, random(60, 100), 0.25);
  score.addNote(i+0.5, p+7, random(60, 100), 0.25);
  score.addNote(i+0.75, p+4, random(60, 100), 0.5);
}
score.play();
score.writeMidiFile("/Users/browna/Desktop/arpeggio.mid");*/