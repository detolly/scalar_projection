PVector a, b;

void setup() {
  size(600,600);
  a = new PVector(random(20, width-20),random(20, height-20));
  b = new PVector(random(20, width-20),random(20, height-20));
  
  background(255);
  strokeWeight(7);
  stroke(255,0,0);
  point(a.x, a.y);
  stroke(255,0,255);
  point(b.x, b.y);
}

void draw() {
  
  background(255);
  strokeWeight(7);
  stroke(255,0,0);
  point(a.x, a.y);
  stroke(0,255,0);
  point(b.x, b.y);
  
  PVector p = new PVector(mouseX, mouseY);
  p.sub(a);
  
  //worked out by formula
  //in directory
  PVector ab = PVector.sub(b, a);
  float t = (ab.x*p.x+ab.y*p.y)/((pow(ab.x,2)+pow(ab.y, 2)));
  PVector ac = new PVector(ab.x*t, ab.y*t);
  ac.add(a);
  
  p.add(a);
  
  
  stroke(0,0,255);
  println(ac.x, ac.y, t);
  point(ac.x, ac.y);
  
  stroke(51);
  point(p.x, p.y);
  strokeWeight(2);
  line(a.x,a.y, p.x, p.y);
  line(p.x, p.y, ac.x, ac.y);
  line(a.x, a.y, b.x, b.y);
  
}