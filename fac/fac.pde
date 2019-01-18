import Turtle.*;
import Turtle.*;
Turtle t;

void setup() {
  int f=1;
  size(500,500);
  background(255);
  stroke(0);
  t = new Turtle(this);
  int i=0;
  int sum=0;
  println("fact(10)="+factorial(10));
  //println("fact(10)="+summation(10));
  //println("fact(10)="+summation(0,10));
  //println("fact(10)="+summation(sum,10,i));
}

//int summation(int sum,int count,int i){
//  if(i<=count){
//    println(sum);
//    return sum;
//  }else{
//    sum = summation(sum,10,i+1)+i;
//    println(sum);
//    return sum;
//  }
//}

//int summation(int sum,int count){
//  if(count<=0){
//    println(sum);
//    return sum;
//  }else{
//    sum = summation(sum,count-1)+count;
//    println(sum);
//    return sum;
//  }
//}

//int summation(int count){ 
//  int sum=0;
//  for(int i=1;i<=count;i++){
//    sum =sum+i;
//    println(sum);
//  }
//  return sum;
//}

int factorial(int n) {
  
  //if (n == 1) {
  //  return 1;
  //} else {
  //  return n * factorial(n-1);
  //}

////tree
  //if(n==1){
  //  println(1);
  //  return 1;
  //}else{
  //  int f = n*factorial(n-1);
  //  println(f);
  //  return f;
  //}

////sum
  int f = 1;
  for (int i = 0; i < n; i++) {
    f = f * (i+1);
  }
  
}

//void draw () {
//   //draw a square
//   t.forward(100);
//   t.right(90);
//   t.forward(100);
//   t.right(90);
//   t.forward(100);
//   t.right(90);
//   t.forward(100);
//   t.right(90);
//}