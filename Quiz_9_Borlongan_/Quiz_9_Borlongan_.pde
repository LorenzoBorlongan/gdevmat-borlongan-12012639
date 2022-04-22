Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker myWalker = new Walker();
Walker myWalker2 = new Walker();
Walker myWalker3 = new Walker();
Walker myWalker4 = new Walker();
Walker myWalker5 = new Walker();
Walker myWalker6 = new Walker();
Walker myWalker7 = new Walker();
Walker myWalker8 = new Walker();
Walker myWalker9 = new Walker();
Walker myWalker10 = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  myWalker.position = new PVector(0, 200);
  myWalker.g = random(50, 255);
  myWalker.b = random(50, 255);
  myWalker.mass =  random(5,10);
  myWalker.scale = myWalker.mass *10;
  
  myWalker2.position = new PVector(50, 200);
  myWalker2.g = random(0, 255);
  myWalker2.b = random(0, 255);
  myWalker2.mass = random(5,10);
  myWalker2.scale = myWalker2.mass *10;
  
    myWalker3.position = new PVector(150, 200);
  myWalker3.g = random(0, 255);
  myWalker3.b = random(0, 255);
  myWalker3.mass = random(5,10);
  myWalker3.scale = myWalker3.mass *10;
  
    myWalker4.position = new PVector(250, 200);
  myWalker4.g = random(0, 255);
  myWalker4.b = random(0, 255);
  myWalker4.mass = random(5,10);
  myWalker4.scale = myWalker4.mass *10;
  
    myWalker5.position = new PVector(350, 200);
  myWalker5.g = random(0, 255);
  myWalker5.b = random(0, 255);
  myWalker5.mass = random(5,10);
  myWalker5.scale = myWalker5.mass *10;
  
    myWalker6.position = new PVector(-50, 200);
  myWalker6.g = random(0, 255);
  myWalker6.b = random(0, 255);
  myWalker6.mass = random(5,10);
  myWalker6.scale = myWalker6.mass *10;
  
    myWalker7.position = new PVector(-150, 200);
  myWalker7.g = random(0, 255);
  myWalker7.b = random(0, 255);
  myWalker7.mass = random(5,10);
  myWalker7.scale = myWalker7.mass *10;
  
    myWalker8.position = new PVector(-250, 200);
  myWalker8.g = random(0, 255);
  myWalker8.b = random(0, 255);
  myWalker8.mass = random(5,10);
  myWalker8.scale = myWalker8.mass *10;
  
    myWalker9.position = new PVector(-350, 200);
  myWalker9.g = random(0, 255);
  myWalker9.b = random(0, 255);
  myWalker9.mass = random(5,10);
  myWalker9.scale = myWalker9.mass *10;
  
    myWalker10.position = new PVector(-450, 200);
  myWalker10.g = random(0, 255);
  myWalker10.b = random(0, 255);
  myWalker10.mass = random(5,10);
  myWalker10.scale = myWalker10.mass *10;
  
}

void draw()
{
  
  background(80);
  
  ocean.render();
  myWalker.render();
  myWalker.update();
  myWalker2.render();
  myWalker2.update();
  myWalker3.render();
  myWalker3.update();
  myWalker4.render();
  myWalker4.update();
  myWalker5.render();
  myWalker5.update();
  myWalker6.render();
  myWalker6.update();
  myWalker7.render();
  myWalker7.update();
  myWalker8.render();
  myWalker8.update();
  myWalker9.render();
  myWalker9.update();
  myWalker10.render();
  myWalker10.update();
  
  
  PVector gravity = new PVector(0, -0.25 * myWalker.mass);
  myWalker.applyForce(gravity);//gravity
    PVector gravity2 = new PVector(0, -0.25 * myWalker2.mass);
  myWalker2.applyForce(gravity2);
  
     PVector gravity3 = new PVector(0, -0.25 * myWalker3.mass);
  myWalker3.applyForce(gravity3);
  
     PVector gravity4 = new PVector(0, -0.25 * myWalker4.mass);
  myWalker4.applyForce(gravity4);
  
     PVector gravity5 = new PVector(0, -0.25 * myWalker5.mass);
  myWalker5.applyForce(gravity5);
  
     PVector gravity6 = new PVector(0, -0.25 * myWalker6.mass);
  myWalker6.applyForce(gravity6);
  
     PVector gravity7 = new PVector(0, -0.25 * myWalker7.mass);
  myWalker7.applyForce(gravity7);
  
     PVector gravity8 = new PVector(0, -0.25 * myWalker8.mass);
  myWalker8.applyForce(gravity8);
  
     PVector gravity9 = new PVector(0, -0.25 * myWalker9.mass);
  myWalker9.applyForce(gravity9);
  
     PVector gravity10 = new PVector(0, -0.25 * myWalker10.mass);
  myWalker10.applyForce(gravity10);
  
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
  PVector friction = myWalker.velocity.copy();
  myWalker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
  PVector friction2 = myWalker2.velocity.copy();
  myWalker2.applyForce(friction2.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction3 = myWalker3.velocity.copy();
  myWalker3.applyForce(friction3.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction4 = myWalker4.velocity.copy();
  myWalker4.applyForce(friction4.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction5 = myWalker5.velocity.copy();
  myWalker5.applyForce(friction5.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction6 = myWalker6.velocity.copy();
  myWalker2.applyForce(friction6.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction7 = myWalker7.velocity.copy();
  myWalker7.applyForce(friction7.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction8 = myWalker8.velocity.copy();
  myWalker8.applyForce(friction8.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction9 = myWalker9.velocity.copy();
  myWalker9.applyForce(friction9.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
    PVector friction10 = myWalker10.velocity.copy();
  myWalker10.applyForce(friction10.mult(-1).normalize().mult(frictionMagnitude));// frcition
  
  
  
  if(myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom
  && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom
   && myWalker.position.y <= Window.bottom && myWalker.position.y <= Window.bottom)
  {
    myWalker.position.y = Window.bottom;
    myWalker.velocity.y *= -1;
 
    myWalker2.position.y = Window.bottom;
    myWalker2.velocity.y *= -1;
    
     myWalker3.position.y = Window.bottom;
    myWalker3.velocity.y *= -1;
    
     myWalker4.position.y = Window.bottom;
    myWalker4.velocity.y *= -1;
    
     myWalker5.position.y = Window.bottom;
    myWalker5.velocity.y *= -1;
    
     myWalker6.position.y = Window.bottom;
    myWalker6.velocity.y *= -1;
    
     myWalker7.position.y = Window.bottom;
    myWalker7.velocity.y *= -1;
    
     myWalker8.position.y = Window.bottom;
    myWalker8.velocity.y *= -1;
    
     myWalker9.position.y = Window.bottom;
    myWalker9.velocity.y *= -1;
    
     myWalker10.position.y = Window.bottom;
    myWalker10.velocity.y *= -1;
    
    
  }
  
  
  if (ocean.isCollidingWith(myWalker) || ocean.isCollidingWith(myWalker2) || ocean.isCollidingWith(myWalker3) || ocean.isCollidingWith(myWalker4) || ocean.isCollidingWith(myWalker5)
  || ocean.isCollidingWith(myWalker6) || ocean.isCollidingWith(myWalker7) || ocean.isCollidingWith(myWalker8) || ocean.isCollidingWith(myWalker9) || ocean.isCollidingWith(myWalker10))
  {
    PVector dragForce = ocean.calculateDragForce(myWalker);
     PVector dragForce2 = ocean.calculateDragForce(myWalker2);
     PVector dragForce3 = ocean.calculateDragForce(myWalker3);
     PVector dragForce4 = ocean.calculateDragForce(myWalker4);
     PVector dragForce5 = ocean.calculateDragForce(myWalker5);
     PVector dragForce6 = ocean.calculateDragForce(myWalker6);
     PVector dragForce7 = ocean.calculateDragForce(myWalker7);
     PVector dragForce8 = ocean.calculateDragForce(myWalker8);
     PVector dragForce9 = ocean.calculateDragForce(myWalker9);
     PVector dragForce10 = ocean.calculateDragForce(myWalker10);
     
    myWalker.applyForce(dragForce);
    myWalker2.applyForce(dragForce2);
      myWalker3.applyForce(dragForce3);
      myWalker4.applyForce(dragForce4);
      myWalker5.applyForce(dragForce5);
      myWalker6.applyForce(dragForce6);
      myWalker7.applyForce(dragForce7);
      myWalker8.applyForce(dragForce8);
      myWalker9.applyForce(dragForce9);
      myWalker10.applyForce(dragForce10);
  }
}  
 
