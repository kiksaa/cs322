PImage sunflower;  // Declare a variable of type PImage
PImage dogy;  // Declare a variable of type PImage
PImage destination;
//int pointillize = 16;
void setup() {
  
  size(338,225);
  // Make a new instance of a PImage by loading an image file
  sunflower= loadImage("sun1.jpg");
  dogy = loadImage("dog.jpg");
  //destination = createImage(sunflower.width, sunflower.height, RGB);
  //background(0);
  //smooth();
  
   background(dogy);
  // Draw the image to the screen at coordinate (0,0)
  tint(255,0,0,100);
  image(sunflower,0,0); 
 //We are going to look at both image's pixels
  
      ////random tv
//   loadPixels();  
//// Loop through every pixel
//for (int i = 0; i < pixels.length; i++) {
//  // Pick a random number, 0 to 255
//  float rand = random(255);
//  // Create a grayscale color based on random number
//  color c = color(rand);
//  // Set pixel at that location to random color
//  pixels[i] = c;
//}
//// When we are finished dealing with pixels
//updatePixels();

      ////random column
//loadPixels();  
//// Loop through every pixel column
//for (int x = 0; x < width; x++) {
//  // Loop through every pixel row
//  for (int y = 0; y < height; y++) {
//    // Use the formula to find the 1D location
//    int loc = x + y * width;
//    if (x % 2 == 0) { // If we are an even column
//      pixels[loc] = color(255);
//    } else {          // If we are an odd column
//      pixels[loc] = color(0);
//    }
//  }
//}
//updatePixels();
   
}
void draw() {
  //loadPixels();
  //float threshold = 200;
  // much black
  
 
 
 //    //point blue-ish
 //int x = int(random(sunflower.width));
 // int y = int(random(sunflower.height));
 // int loc = x + y*sunflower.width;
 // // Look up the RGB color in the source image
 // loadPixels();
 // float r = red(sunflower.pixels[loc]);
 // float g = green(sunflower.pixels[loc]);
 // float b = blue(sunflower.pixels[loc]);
 // noStroke();
 // // Draw an ellipse at that location with that color
 // fill(r,g,b,100);
 // ellipse(x,y,pointillize,pointillize);
  
// for (int x = 0; x < sunflower.width; x++) {
//  for (int y = 0; y < sunflower.height; y++ ) {
//    // Calculate the 1D pixel location
//    int loc = x + y*sunflower.width;
//    // Get the R,G,B values from image
//    float r = red   (sunflower.pixels[loc]);
//    float g = green (sunflower.pixels[loc]);
//    float b = blue  (sunflower.pixels[loc]);
//    // Change brightness according to the mouse here
//    float adjustBrightness = ((float) mouseX / width) * 8.0;
//    r *= adjustBrightness;
//    g *= adjustBrightness;
//    b *= adjustBrightness;
//    // Constrain RGB to between 0-255
//    r = constrain(r,0,255);
//    g = constrain(g,0,255);
//    b = constrain(b,0,255);
//    // Make a new color and set pixel in the window
//    color c = color(r,g,b);
//    pixels[loc] = c;
//  }
//}
 
 //loadPixels(); 
 // // Since we are going to access the image's pixels too  
 // sunflower.loadPixels(); 
 // for (int y = 0; y < height; y++) {
 //   for (int x = 0; x < width; x++) {
 //     int loc = x + y*width;
      
 //     // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
 //     float r = red(sunflower.pixels[loc]);
 //     float g = green(sunflower.pixels[loc]);
 //     float b = blue(sunflower.pixels[loc]);
      
 //     // Image Processing would go here
 //     // If we were to change the RGB values, we would do it here, 
 //     // before setting the pixel in the display window.
      
 //     // Set the display pixel to the image pixel
 //     pixels[loc] =  color(r,g,b);          
 //   }
 // }
 // updatePixels();

//for (int x = 1; x < width; x++) {
//  for (int y = 0; y < height; y++ ) {
//    // Pixel location and color
//    int loc = x - y*sunflower.width;
//    color pix = sunflower.pixels[loc];

//    // Pixel to the left location and color
//    int leftLoc = (x-1) + y*sunflower.width;
//    color leftPix = sunflower.pixels[leftLoc];

//    // New color is difference between pixel and left neighbor
//    float diff = abs(brightness(pix) - brightness(leftPix));
//    pixels[loc] = color(diff);
//  }
//}

//for (int x = 0; x < sunflower.width; x++) {
//  for (int y = 0; y < sunflower.height; y++ ) {
//    // Calculate the 1D pixel location
//    int loc = x + y*sunflower.width;
//    // Get the R,G,B values from image
//    float r = red   (sunflower.pixels[loc]);
//    float g = green (sunflower.pixels[loc]);
//    float b = blue  (sunflower.pixels[loc]);
//    // Calculate an amount to change brightness 
//    // based on proximity to the mouse
//    float distance = dist(x,y,mouseX,mouseY);
//    float adjustBrightness = (80-distance)/50;  
//    r *= adjustBrightness;
//    g *= adjustBrightness;
//    b *= adjustBrightness;
//    // Constrain RGB to between 0-255
//    r = constrain(r,0,255);
//    g = constrain(g,0,255);
//    b = constrain(b,0,255);
//    // Make a new color and set pixel in the window
//    color c = color(r,g,b);
//    pixels[loc] = c;
//  }
//}

  //sunflower.loadPixels();
  //destination.loadPixels();
  //for (int x = 0; x < sunflower.width; x++) {
  //  for (int y = 0; y < sunflower.height; y++ ) {
  //    int loc = x + y*sunflower.width;
  //    // Test the brightness against the threshold
  //    if (brightness(sunflower.pixels[loc]) > threshold) {
  //      destination.pixels[loc]  = color(255);  // White
  //    }  else {
  //      destination.pixels[loc]  = color(0);    // Black
  //    }
  //  }
  //}
 

  // We changed the pixels in destination
//updatePixels();
//  //// Display the destination
//image(destination,0,0);
}