PVector position = new PVector();
PVector xspeed = new PVector(7, 3);

void setup()
{
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0 , -1, 0);
}

Walker myWalker = new Walker();

void moveandbounce()
{
  position.add(xspeed);
  
  //conditions for bounci\\ng
  
  if((position.x > Window.right) || (position.x < Window.left))
  {
    xspeed.x *= -1;
  }
  
   if((position.y > Window.top) || (position.y < Window.bottom))
  {
    xspeed.y *= -1;
  }
  
   // render the circle
  int rgb = int(random(0, 255)), rgb2 = int(random(0, 255)),
  rgb3 = int(random(0, 255)), a = int(random(50, 100));
  fill(rgb, rgb2, rgb3, a);
  circle(position.x, position.y, 50);
}

void draw()
{
  int rgb = int(random(0, 255)), rgb2 = int(random(0, 255)),
  rgb3 = int(random(0, 255)), a = int(random(50, 100));
  fill(rgb, rgb2, rgb3, a);
  background(255);
  moveandbounce();
  myWalker.render();
  myWalker.RWalk();// i wasn't sure what walker exactly should be applied so i have both
   

}
