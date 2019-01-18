import Turtle.*;
float startLen = 150;
float decay = .75;
int angle = 35;
Turtle t;

void setup() {
  size(800,600);
  background(100);
  stroke(0,200,100);
  t = new Turtle(this);
  noLoop();
}

void draw () {
  //move turtle back 100 steps 
  t.penUp();
  t.back(100);
  t.penDown();
  //draw tree
  
  branch(6,100,30);
}

//a recursive tree-drawing method
void branch(int iteration, float branchLength, int angle)
{
  if (iteration == 0)
    return;
     t.back(branchLength);
  
  t.left(angle);
  branch(iteration-1, branchLength/1.5, angle);
  t.right(angle);
  t.right(angle);
  branch(iteration-1, branchLength/1.5, angle);
  t.left(angle);
 t.forward(branchLength);
}

//import Turtle.*;
//size(500,500);
//background(255);
//stroke(0);

//Turtle t = new Turtle(this);

//t.forward(100);
//t.right(90);
//t.forward(100);
//t.right(90);
//t.forward(100);
//t.right(90);
//t.forward(100);