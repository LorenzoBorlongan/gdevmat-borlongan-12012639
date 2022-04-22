PVector wind = new PVector(0.2, 0);

Walker[] myWalkers = new Walker[8];

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  int posY = 0;
  
 for(int i = 0; i < 8; i++)
 {
   //float Friction = -1 * mew * N * v;
   posY = 2 * (Window.windowHeight / 10) *  (i - 5);
   myWalkers[i] = new Walker();
   myWalkers[i].position = new PVector(-500, posY);
   myWalkers[i].mass = 10 -i;
   myWalkers[i].scale = myWalkers[i].mass * 15;
   myWalkers[i].r = random(1, 255);
   myWalkers[i].g = random(1, 255);
   myWalkers[i].b = random(1, 255);
   myWalkers[i].a = random(150, 255);
   
 }
}


void draw()
{
  background(80);
  noStroke();
  
  for(Walker w : myWalkers)
  {
   float mew = 0.1f;
   float normal = 1;
   float frictionMagnitude = mew * normal;
   PVector friction = w.velocity.copy();
   friction.mult(-1);
   friction.normalize();
   friction.mult(frictionMagnitude);
   w.applyForce(friction);
    w.update();
    w.render();
    w.applyForce(wind);
    
    if(w.position.x >= Window.right -  500)
    {
      mew = 0.4f;
      w.velocity.x *= 0.9;
      w.velocity.y *= 0.9;
     float frictionMagnitude2 = mew * 1;
     PVector friction2 = w.velocity.copy();
     friction2.mult(-1);
     friction2.normalize();
     friction2.mult(frictionMagnitude2);
      w.applyForce(friction2);
    }
  }
}
