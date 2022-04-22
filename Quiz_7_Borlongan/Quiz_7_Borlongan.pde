float[] ArrayX = new float[100];
float[] ArrayY = new float[100];
float ex;
float ey;

Walker walkers = new Walker();

void setup() {
  
size(1280, 720);

 camera(0, 0, Window.eyeZ, 0, 0, 0, 0 , -1, 0);
 
 noLoop();
}
void draw() {
 
  
  for (int i = 0; i < ArrayX.length; i++) {
    
ArrayX[i] = random(-720, 720);

ArrayY[i] = random(-1080, 1080);
}

 noStroke();
background(0);
for (int i = 0; i < ArrayX.length; i++) {
fill(random(255), random(255), random(255));

PVector IndexPosition = new PVector(ArrayX[i], ArrayY[i]);

walkers.position.x = IndexPosition.x;

walkers.position.y = IndexPosition.y;

walkers.Wsize.x = random(20, 40);

walkers.render();
walkers.update();
walkers.CheckEdges();
}
 float targetX = mouseX;
  float dx = targetX - ex;
  ex += dx * 0.05;

  float targetY = mouseY;
  float dy = targetY - ey;
  ey += dy * 0.05;
  
  PVector Direction = new PVector(ex, ey);
  walkers.position.add(Direction);


}
