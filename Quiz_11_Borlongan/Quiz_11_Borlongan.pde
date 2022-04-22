
Walker Matter1 = new Walker();
Walker Matter2 = new Walker();
Walker Matter3 = new Walker();
Walker Matter4 = new Walker();
Walker Matter5 = new Walker();
Walker Matter6 = new Walker();
Walker Matter7 = new Walker();
Walker Matter8 = new Walker();
Walker Matter9 = new Walker();
Walker Matter10 = new Walker();

void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  Matter1.position = new PVector();
  Matter1.mass = random(2, 8);
  Matter1.scale = Matter1.mass * 10;
  
  Matter2.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter2.mass = random(2, 8);
  Matter2.scale = Matter2.mass * 10;
  
    Matter3.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter3.mass = random(2, 8);
  Matter3.scale = Matter3.mass * 10;
  
    Matter4.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter4.mass = random(2, 8);
  Matter4.scale = Matter4.mass * 10;
  
    Matter5.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter5.mass = random(2, 8);
  Matter5.scale = Matter5.mass * 10;
  
    Matter6.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter6.mass = random(2, 8);
  Matter6.scale = Matter6.mass * 10;
  
    Matter7.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter7.mass = random(2, 8);
  Matter7.scale = Matter7.mass * 10;
  
    Matter8.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter8.mass = random(2, 8);
  Matter8.scale = Matter8.mass * 10;
  
    Matter9.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter9.mass = random(2, 8);
  Matter9.scale = Matter9.mass * 10;
  
     Matter10.position = new PVector(random(-500, 500), random(-300), random(300));
  Matter10.mass = random(2, 8);
  Matter10.scale = Matter10.mass * 10;
  
  
  
}


void draw()
{
  background(255);
  
  Matter1.update();
  Matter1.render();
     
  Matter2.update();
  Matter2.render();
  
  Matter3.update();
  Matter3.render();
  
  Matter4.update();
  Matter4.render();
  
   Matter5.update();
  Matter5.render();
  
  Matter5.update();
  Matter5.render();
  
  Matter6.update();
  Matter6.render();
  
  Matter7.update();
  Matter7.render();
  
  Matter8.update();
  Matter8.render();
  
  Matter9.update();
  Matter9.render();
  
  Matter10.update();
  Matter10.render();
  
  Matter1.applyForce(Matter2.calculateAttraction(Matter1));
  Matter2.applyForce(Matter2.calculateAttraction(Matter3));
  Matter3.applyForce(Matter3.calculateAttraction(Matter4));
  Matter4.applyForce(Matter4.calculateAttraction(Matter5));
  Matter5.applyForce(Matter5.calculateAttraction(Matter6));
  Matter6.applyForce(Matter6.calculateAttraction(Matter7));
  Matter7.applyForce(Matter7.calculateAttraction(Matter8));
  Matter8.applyForce(Matter8.calculateAttraction(Matter9));
  Matter9.applyForce(Matter9.calculateAttraction(Matter10));
  Matter10.applyForce(Matter10.calculateAttraction(Matter1));
  
}
