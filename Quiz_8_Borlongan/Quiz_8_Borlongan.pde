
Walker myWalker1 = new Walker();
Walker myWalker2 = new Walker();
Walker myWalker3 = new Walker();
Walker myWalker4 = new Walker();
Walker myWalker5 = new Walker();
Walker myWalker6 = new Walker();
Walker myWalker7 = new Walker();
Walker myWalker8 = new Walker();
Walker myWalker9 = new Walker();
Walker myWalker10 = new Walker();



PVector wind = new PVector(0.05, 0);
PVector gravity = new PVector(0, -0.1);

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  myWalker1.mass = 1;
  myWalker1.scale = myWalker1.mass *15;
  
  myWalker2.mass = 2;
  myWalker2.scale = myWalker2.mass *15;
  
  myWalker3.mass = 3;
  myWalker3.scale = myWalker3.mass *15;
  
  myWalker4.mass = 4;
  myWalker4.scale = myWalker4.mass *15;
  
  myWalker5.mass = 5;
  myWalker5.scale = myWalker5.mass * 15;
  
  myWalker6.mass = 6;
  myWalker6.scale = myWalker6.mass *15;
  
  myWalker7.mass = 7;
  myWalker7.scale = myWalker7.mass *15;
  
  myWalker8.mass = 8;
  myWalker8.scale = myWalker8.mass * 15;

  myWalker9.mass = 9;
  myWalker9.scale = myWalker9.mass * 15;
  
  myWalker10.mass = 10;
  myWalker10.scale = myWalker10.mass * 15;
  
}


void draw()
{
  background(80);
  
  myWalker1.render();
  myWalker1.update();
  myWalker1.applyForce(wind);
  myWalker1.applyForce(gravity);
  
  myWalker2.render();
  myWalker2.update();
  myWalker2.applyForce(wind);
  myWalker2.applyForce(gravity);
  
  myWalker3.render();
  myWalker3.update();
  myWalker3.applyForce(wind);
  myWalker3.applyForce(gravity);
  
  myWalker4.render();
  myWalker4.update();
  myWalker4.applyForce(wind);
  myWalker4.applyForce(gravity);
  
    myWalker5.render();
  myWalker5.update();
  myWalker5.applyForce(wind);
  myWalker5.applyForce(gravity);
  
    myWalker6.render();
  myWalker6.update();
  myWalker6.applyForce(wind);
  myWalker6.applyForce(gravity);
  
    myWalker7.render();
  myWalker7.update();
  myWalker7.applyForce(wind);
  myWalker7.applyForce(gravity);
  
    myWalker8.render();
  myWalker8.update();
  myWalker8.applyForce(wind);
  myWalker8.applyForce(gravity);
  
   myWalker9.render();
  myWalker9.update();
  myWalker9.applyForce(wind);
  myWalker9.applyForce(gravity);
  
   myWalker10.render();
  myWalker10.update();
  myWalker10.applyForce(wind);
  myWalker10.applyForce(gravity);
  
  
  if(myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom
  && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom
  && myWalker1.position.y <= Window.bottom && myWalker1.position.y <= Window.bottom)
  {
    myWalker1.velocity.y *= -1;
    myWalker2.velocity.y *= -1;
    myWalker3.velocity.y *= -1;
    myWalker4.velocity.y *= -1;
    myWalker5.velocity.y *= -1;
    myWalker6.velocity.y *= -1;
    myWalker7.velocity.y *= -1;
    myWalker8.velocity.y *= -1;
    myWalker9.velocity.y *= -1;
    myWalker10.velocity.y *= -1;
  }
}
