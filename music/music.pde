//            //run music
//import ddf.minim.*;
 
//Minim minim;
//AudioPlayer song;
 
//void setup()
//{
//  size(100, 100);
 
//  minim = new Minim(this);
 
//  // this loads mysong.wav from the data folder
//  song = minim.loadFile("she.mp3");
//  song.play();
//}
 
//void draw()
//{
//  background(0);
//}
              
import ddf.minim.*;
import ddf.minim.analysis.*;


Minim minim;
AudioPlayer song;
AudioMetaData meta;
FFT fft;
BeatDetect beat;
int  r = 100;
int  r1 = 150;
float rad = 70;
void setup()
{
  size(512, 256, P3D);
 
  minim = new Minim(this);
  // groove.mp3 would be in the sketches data folder
  song = minim.loadFile("she.mp3");
  //meta = song.getMetaData();
  song.loop();
  fft = new FFT(song.bufferSize(), song.sampleRate()); //find the trequency
  beat = new BeatDetect();

  // serif.vlw would be in the data folder, most likely created using the PDE
  //textFont( loadFont("serif.vlw") );
  //textMode(SCREEN);
}
 
//int ys = 15;
//int yi = 15;

void draw()
{ 
  float t = map(mouseX, 0, width, 0, 1);
  beat.detect(song.mix);
  fill(#1A1F18, 20);
  noStroke();
  rect(0, 0, width, height);
  translate(width/2, height/2);
  noFill();
  fill(-1, 10);
  if (beat.isOnset()) rad = rad*0.9;
  else rad = 70;
  ellipse(0, 0, 2*rad, 2*rad);
  
  stroke(-1, 50);
  int bsize = song.bufferSize();
  for (int i = 0; i < bsize - 1; i+=5)
  {
    float x = (r)*cos(i*2*PI/bsize);
    float y = (r)*sin(i*2*PI/bsize);
    float x2 = (r + song.left.get(i)*100)*cos(i*2*PI/bsize);
    float y2 = (r + song.left.get(i)*100)*sin(i*2*PI/bsize);
    line(x, y, x2, y2);
  }
  
  beginShape();
  noFill();
  stroke(-1, 50);
  for (int i = 0; i < bsize; i+=30)
  {
    float x2 = (r + song.left.get(i)*100)*cos(i*2*PI/bsize);
    float y2 = (r + song.left.get(i)*100)*sin(i*2*PI/bsize);
    vertex(x2, y2);
    pushStyle();
    stroke(-1);
    strokeWeight(2);
    point(x2, y2);
    popStyle();
  }
  endShape();
}
        //wava music
//void draw()
//{
//  background(100);
  
  //fft.forward(song.mix);
  
  //beat.detect(song.mix);
  
  //rect(0, 0, width, height); //center
  //translate(width/2, height/2);
  //noFill();
  
  //fill(-1, 10);
  //if (beat.isOnset()) rad = rad*0.9; //circle
  //else rad = 70;
  //ellipse(0, 0, 2*rad, 2*rad);
  
  //int bsize = song.bufferSize();
  //for (int i = 0; i < bsize - 1; i+=5) //wava like sun
  //{
  //  float x = (r)*cos(i*2*PI/bsize);
  //  float y = (r)*sin(i*2*PI/bsize);
  //  float x2 = (r + song.left.get(i)*100)*cos(i*2*PI/bsize);
  //  float y2 = (r + song.left.get(i)*100)*sin(i*2*PI/bsize);
  //  line(x, y, x2, y2);
  //}
  
  //beginShape(); //wava circle point
  //noFill();
  //stroke(-1, 50);
  //for (int i = 0; i < bsize; i+=30)
  //{
  //  float x2 = (r1 + song.left.get(i)*100)*cos(i*2*PI/bsize);
  //  float y2 = (r1 + song.left.get(i)*100)*sin(i*2*PI/bsize);
  //  vertex(x2, y2);
  //  pushStyle();
  //  stroke(-1);
  //  strokeWeight(2);
  //  point(x2, y2);
  //  popStyle();
  //}
  //endShape();
 
//  stroke(255, 0, 255, 128);

//for(int i = 0; i < fft.specSize(); i++)
//  {
//    line(i, height, i, height - fft.getBand(i)*4);
//  }

//  stroke(0,0,0,128);//whiel
//   for(int i = 0; i < song.bufferSize() - 1; i++)
//  {
//    line(i, 50 + song.left.get(i)*40, i+1, 50 + song.left.get(i+1)*50); //*numbersmall --->  wava small
//    line(i, 150 + song.right.get(i)*40, i+1, 150 + song.right.get(i+1)*50);
//  }

//}
 
             //Data music
//void draw()
//{
//  background(0);
//  int y = ys;
//  text("File Name: " + meta.fileName(), 5, y);
//  text("Length (in milliseconds): " + meta.length(), 5, y+=yi);
//  text("Title: " + meta.title(), 5, y+=yi);
//  text("Author: " + meta.author(), 5, y+=yi); 
//  text("Album: " + meta.album(), 5, y+=yi);
//  text("Date: " + meta.date(), 5, y+=yi);
//  text("Comment: " + meta.comment(), 5, y+=yi);
//  text("Track: " + meta.track(), 5, y+=yi);
//  text("Genre: " + meta.genre(), 5, y+=yi);
//  text("Copyright: " + meta.copyright(), 5, y+=yi);
//  text("Disc: " + meta.disc(), 5, y+=yi);
//  text("Composer: " + meta.composer(), 5, y+=yi);
//  text("Orchestra: " + meta.orchestra(), 5, y+=yi);
//  text("Publisher: " + meta.publisher(), 5, y+=yi);
//  text("Encoded: " + meta.encoded(), 5, y+=yi);
//}