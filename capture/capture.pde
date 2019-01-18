//import processing.video.*;

//Capture cam;

//void setup() {
//  size(640, 480);

//  String[] cameras = Capture.list();
  
//  if (cameras.length == 0) {
//    println("There are no cameras available for capture.");
//    exit();
//  } else {
//    println("Available cameras:");
//    for (int i = 0; i < cameras.length; i++) {
//      println(cameras[i]);
//    }
    
//    // The camera can be initialized directly using an 
//    // element from the array returned by list():
//    cam = new Capture(this, cameras[0]);
//    cam.start();     
//  }      
//}

//void draw() {
//  if (cam.available() == true) {
//    cam.read();
//  }
//  image(cam, 0, 0);
//  // The following does the same, and is faster when just drawing the image
//  // without any additional resizing, transformations, or tint.
//  //set(0, 0, cam);
//}


//// Step 1. Import the video library.
//import processing.video.*;

////Step 2. Declare a capture object.
//Capture video;

//// Step 5. Read from the camera when a new image is available!
//void captureEvent(Capture video) {
//  video.read();
//}

//void setup() {  
//  size(320, 240);
  
//  // Step 3. Initialize Capture object.
//  video = new Capture(this, 320, 240);
  
//  // Step 4. Start the capturing process.
//  video.start();
//}

//// Step 6. Display the image.
//void draw() {  
//image(video, 0, 0);
//}


//// Step 1. Import the video library
//import processing.video.*;

//// Step 2. Declare a Capture object
//Capture video;

//void setup() {  
//  size(320, 240);  
  
//  // Step 3. Initialize Capture object via Constructor
//  video = new Capture(this, 320, 240);  
//  video.start();
//}
  
//// An event for when a new frame is available
//void captureEvent(Capture video) {  
//  // Step 4. Read the image from the camera.  
//  video.read();
//}
//void draw() {
//  loadPixels();
//  video.loadPixels();  

//  for (int x = 0; x < video.width; x++) {    
//    for (int y = 0; y < video.height; y++) {      
//      // Calculate the 1D location from a 2D grid
//      int loc = x + y * video.width;      
    
//      // Get the red, green, blue values from a pixel      
//      float r = red  (video.pixels[loc]);      
//      float g = green(video.pixels[loc]);      
//      float b = blue (video.pixels[loc]);      
      
//      // Calculate an amount to change brightness based on proximity to the mouse      
//      float d = dist(x, y, mouseX, mouseY);      
//      float adjustbrightness = map(d, 0, 100, 4, 0);      
//      r *= adjustbrightness;      
//      g *= adjustbrightness;      
//      b *= adjustbrightness; 
      
//      float avg =(r+g+b)/3;//gray
//      r = avg;
//      g = avg;
//      b = avg;
      
//      // Constrain RGB to make sure they are within 0-255 color range      
//      r = constrain(r, 0, 255);      
//      g = constrain(g, 0, 255);      
//      b = constrain(b, 0, 255);      

//      // Make a new color and set pixel in the window      
//      color c = color(avg);      
//      pixels[loc] = c;    
//    }  
//  }  
  
//  updatePixels();
//}


import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  c.read();
}


//import gab.opencv.*;
//import java.awt.Rectangle;

//OpenCV opencv;
//Rectangle[] faces;

//void setup() {
//  opencv = new OpenCV(this, "w3.jpg");
//  size(1080, 720);

//  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
//  faces = opencv.detect();
//}

//void draw() {
//  image(opencv.getInput(), 0, 0);

//  noFill();
//  stroke(0, 255, 0);
//  strokeWeight(3);
//  for (int i = 0; i < faces.length; i++) {
//    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
//  }
//}

//import gab.opencv.*;

//PImage src, dst;
//OpenCV opencv;

//ArrayList<Contour> contours;
//ArrayList<Contour> polygons;

//void setup() {
//  src = loadImage("w4.jpg"); 
//  size(1080, 360);
//  opencv = new OpenCV(this, src);

//  opencv.gray();
//  opencv.threshold(70);
//  dst = opencv.getOutput();

//  contours = opencv.findContours();
//  println("found " + contours.size() + " contours");
//}

//void draw() {
//  scale(0.5);
//  image(src, 0, 0);
//  image(dst, src.width, 0);

//  noFill();
//  strokeWeight(3);
  
//  for (Contour contour : contours) {
//    stroke(0, 255, 0);
//    contour.draw();
    
//    stroke(255, 0, 0);
//    beginShape();
//    for (PVector point : contour.getPolygonApproximation().getPoints()) {
//      vertex(point.x, point.y);
//    }
//    endShape();
//  }
//}


//import gab.opencv.*;
//import processing.video.*;
//import java.awt.*;
//import gab.opencv.*;

//PImage src, dst;

//Capture video;
//OpenCV opencv;
//ArrayList<Contour> contours;
//ArrayList<Contour> polygons;
//void setup() {
//  size(640, 480);
//  video = new Capture(this, 640, 480);
//  opencv = new OpenCV(this, 640, 480);
//  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

//  video.start();
//}
//void draw() {
//  opencv.loadImage(video);
//  scale(0.5);
//  image(src, 0, 0);
//  image(dst, src.width, 0);

  

//  image(video, 0, 0 );


//}

//void captureEvent(Capture c) {
//  c.read();
//}