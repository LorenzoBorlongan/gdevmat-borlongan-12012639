class Walker
{
  PVector position = new PVector(0,0);
  //float x;
  //float y;
  void render()
  {
    circle(position.x, position.y, 50);
  }
  void RWalk()
  {
   int rng = int(random(4)); 
   if (rng == 0)
   {
     position.y+=10;
   }
   else if (rng == 1)
   {
    position.y-=10; 
   }
   else if (rng == 2)
   {
     position.x+=10;
   }
   else if (rng == 3)
   {
     position.x-=10;
   }
   
   
  }
}
