/*import arb.soundcipher.*;

SoundCipher sc = new SoundCipher(this);
float[] pitcheSet = {67, 69, 72, 67, 72, 69, 64, 69, 67, 64, 67, 69, 67, 64, 67};
float[] dynamic = {67, 69, 72, 67, 72, 69, 64, 69, 67, 64, 67, 69, 67, 64, 67};
float[] duration = {67, 69, 72, 67, 72, 69, 64, 69, 67, 64, 67, 69, 67, 64, 67};
sc.playPhrase(pitcheSet,dynamic,duration);
*/

import arb.soundcipher.*;
 
 SoundCipher sc = new SoundCipher();
 int[] scale = {67, 69, 72, 67, 72, 69, 64, 69, 67, 64, 67, 69, 67, 64, 67, 69, 67, 64,62,64,67,69,
                72, 67, 69, 72, 69, 67, 64, 62, 60, 69, 72, 67, 69, 67, 64, 62, 60, 62, 64, 67,
                64, 62, 64, 67, 64, 62, 64, 67, 64, 67, 72, 69, 72, 74, 72, 67, 69, 72, 69, 67, 64, 62, 60,
                72, 67, 72, 69, 72, 67, 72, 69, 72, 76, 72, 74, 72, 67, 72, 69, 74, 71, 69, 71, 67, 69,
                72, 67, 72, 69, 72, 67, 72, 69, 72, 76, 72, 74, 72, 67, 72, 69, 72, 67, 72, 64, 67, 64, 62, 60};//Kasalong MIDI Notes Song
 
void setup() {
     //frameRate(8);
     sc.instrument(sc.HARP);//CLARINET,FLUTE
 }

 void draw() {
   if (random(1) < 0.1) {
         sc.playNote(scale[(int)random(scale.length)], (int)random(80)+40, 2);
        // stroke(color(random(256), random (256), random(256)));
        // rect(random(100), random(100), random(40), random(40));
     }
 }
 