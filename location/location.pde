//import ketai.sensors.*;
//KetaiLocation location;                                           // 1
//double longitude, latitude, altitude;
//float accuracy;

//void setup() {
//  orientation(LANDSCAPE);
//  textAlign(CENTER, CENTER);
//  textSize(72);
//  location = new KetaiLocation(this);                             // 2
//}

//void draw() {
//  background(78, 93, 75);
//  if (location.getProvider() == "none")                           // 3
//    text("Location data is unavailable. \n" +
//      "Please check your location settings.", width/2, height/2);
//  else
//    text("Latitude: " + latitude + "\n" +                         // 4
//      "Longitude: " + longitude + "\n" +
//      "Altitude: " + altitude + "\n" +
//      "Accuracy: " + accuracy + "\n" +
//      "Provider: " + location.getProvider(), width/2, height/2);
//}

//void onLocationEvent(double _latitude, double _longitude,
//  double _altitude, float _accuracy) {                            // 5
//  longitude = _longitude;
//  latitude = _latitude;
//  altitude = _altitude;
//  accuracy = _accuracy;
//  println("lat/lon/alt/acc: " + latitude + "/" + longitude + "/"
//    + altitude + "/" + accuracy);
//}

import ketai.sensors.*;
double longitude, latitude, altitude, accuracy;
KetaiLocation location;
Location bam;

void setup() {
  location = new KetaiLocation(this);
  String serverMessage = "";
String myName = "myNexusID";
String serverURL = "http://ketaiLibrary.org/rapidAndroidDevelopment/location.php";
  // Example location: the Brooklyn Academy of Music
  bam = new Location("bam");                                    // 1
  bam.setLatitude(40.686818);
  bam.setLongitude(-73.977779);
  orientation(LANDSCAPE);
  textAlign(CENTER, CENTER);
  textSize(72);
}
void onLocationEvent(Location _location)                        // 6
{
  // Print out the location object
  println("onLocation event: " + _location.toString());
  longitude = _location.getLongitude();
  latitude = _location.getLatitude();
  altitude = _location.getAltitude();
  accuracy = _location.getAccuracy();
  updateMyLocation();
}
void updateMyLocation()
{
  if (myName != "")
  {
    String url = serverURL+"?update="+myName+
      "&location="+latitude+","+longitude+","+altitude;           // 7
    String result[] = loadStrings(url);                           // 8
    if (result.length > 0)
      serverMessage = result[0];
  }
}


void draw() {
  background(78, 93, 75);
  if (location.getProvider() == "none") {
    text("Location data is unavailable. \n" +
      "Please check your location settings.", 0, 0, width, height);
  } else {
    float distance = round(location.getLocation().distanceTo(bam));  // 2
    text("Location data:\n" +
      "Latitude: " + latitude + "\n" +
      "Longitude: " + longitude + "\n" +
      "Altitude: " + altitude + "\n" +
      "Accuracy: " + accuracy + "\n" +
      "Distance to Destination: "+ distance + "m\n" +
      "Provider: " + location.getProvider()+ "\n"+
      "Last Server Message: " + serverMessage, 20, 0, width, height );
      
  }
}

void onLocationEvent(Location _location)                          // 3
{
  //print out the location object
  println("onLocation event: " + _location.toString());           // 4
  longitude = _location.getLongitude();
  latitude = _location.getLatitude();
  altitude = _location.getAltitude();
  accuracy = _location.getAccuracy();
}