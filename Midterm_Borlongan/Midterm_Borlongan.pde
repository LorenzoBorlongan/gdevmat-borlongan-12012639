float[] xco = new float[100];
float[] yco = new float[100];

Walker Blackhole = new Walker();
Walker walkers = new Walker();

void setup() {
  
size(1280, 720);

 camera(0, 0, Window.eyeZ, 0, 0, 0, 0 , -1, 0);
 
 noLoop();
}
void draw() {
 
  
  for (int i = 0; i < xco.length; i++) {
    
xco[i] = randomGaussian() * (width - 720);

yco[i] = randomGaussian() * (height - 360);
}

 noStroke();
background(0);
float val = randomGaussian();

  float sd = 40;              
  float mean = width/2;
  float xx = ( val * sd ) + mean; 
  float yy = ( val * sd ) + mean;

Blackhole.position.x = xx;

Blackhole.position.y = yy;

Blackhole.Wcolor.x = 140;

Blackhole.render();

for (int i = 0; i < xco.length; i++) {
fill(random(255), random(255), random(255));

PVector v = new PVector(xco[i], yco[i]);

walkers.position.x = v.x;

walkers.position.y = v.y;

walkers.Wcolor.x = 50;

walkers.render();
}

PVector direction = PVector.sub(Blackhole.position, walkers.position);
walkers.position.add(direction);


}
