void setup()
{
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  outerglow();
  dualLightSaber();
  handle();
}

void dualLightSaber(){
   stroke(255, 0, 0);
   strokeWeight(13);
   PVector mouse = mousePos();
  mouse.normalize().mult(500);
  mouse.mult(0.8);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());
  
  mouse.normalize().mult(-200);
  mouse.mult(2);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());  
 
  
}
void handle(){
  stroke(0, 0, 0);
  strokeWeight(20);
  PVector mouse = mousePos();
  mouse.normalize().mult(45);
  mouse.mult(2);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());
  mouse.normalize().mult(-45);
  mouse.mult(2);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());
}

void outerglow(){
  PVector mouse = mousePos();
  strokeWeight(22);
  stroke(255, 80, 0);
  mouse.normalize().mult(510);
  mouse.mult(0.8);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag()); 
  mouse.normalize().mult(-210);
  mouse.mult(1.95);
  line(0, 0, mouse.x, mouse.y);
  println(mouse.mag());  
 
}
