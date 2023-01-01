void onpoint() {
  
  translate((width / 2) + 4.2111, (height / 2) + 4.0611);
  rotate(high);
  scale(5);
  stroke(0);
  strokeWeight(0.2);
  point(w, o);
  
  //triOsc.amp(0.006);
  //triOsc.play();
  //env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
    
}

void gForce() {

  float dt = 0.01;
  float dx = (a * (o - w)) * dt;
  float dy = (w * (b - r) - o) * dt;
  float dz = (w * o - c * r) * dt;
  
  w = w + dx;
  o = o + dy;
  r = r + dz;
  
  high = high + 3;
    
  translate((width / 2) + 3.7, (height / 2) + 3.7);
  rotate(high);
  scale(5);
  stroke(color(255, 0, 0));
  strokeWeight(0.2);
  rect(w, o, 0.01, 0.01);
    
}

//int w;

//void draw() {
  
//  //text(frameCount, 50, 10);
    
//  //w = ;
   
//  //background(cats); 
  
//  gForce();
  
//  println(frameCount);
  
//}
