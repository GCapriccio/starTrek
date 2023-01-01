// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
//Videos
//Part 1:
//https://www.youtube.com/watch?v=OJxEcs0w_kE
//Part 2: 
//https://www.youtube.com/watch?v=QQx_NmCIuCY

//This code is only part 1 video of the challenge. 
import processing.sound.*;

float w = 0.01;
float o = 0;
float r = 0;

float a = 10;
float b = 28;
float c = 8.0 / 3.0;

float high = 0;

//float attackTime = 0.001;
//float sustainTime = 0.004;
//float sustainLevel = 0.3;
//float releaseTime = 0.4;

//PImage cats;

//TriOsc triOsc;
//Env env;

Quadtree qtree;
TriOsc triangle;

public void setup (){
  
  size(1041, 781);
  
  //cats = loadImage("cat.jpg");
  
  background(0);
  
  float k;
  
  k = (14.791 % 7);
    
  //frameRate(k * 8);

    frameRate(k * 32);

  
  high = high * 0.5;
  
  triangle = new TriOsc(this);
 
  int man = 600;
 
  triangle.amp(0.06);
  triangle.freq(man);
  //triangle.play();
 
  //triOsc = new TriOsc(this);
 
  //env = new Env(this); 

//size(400 ,400);
//background(0);

  qtree = new Quadtree (new Rectangle (width/2 , height/2 , width/2 , height/2) , 4);

}

public void draw (){
 
  qtree.show();
  
  gForce();
  
  println(frameCount);
  
  if(mousePressed){
    
    for (int i  = 0 ; i < 5 ; i++){
      
       qtree.insert(new Point ( mouseX +random(-5,5) , mouseY+random(-5,5)));
    
  }
  
}
  
} 
