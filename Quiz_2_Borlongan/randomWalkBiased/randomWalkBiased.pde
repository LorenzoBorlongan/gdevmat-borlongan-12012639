class randomWalkBiased
{
  float x;
  float y;
  void render()
  {
    circle(x, y, 30);
  }
  void SecondWalk()
  {
   int rng = int(random(1, 100)); 
   if (rng >= 1 && rng <= 40)
   {
     y+=10;
   }
   else if (rng >= 41 && rng <= 60)
   {
    y-=10; 
   }
   else if (rng >= 61 && rng <= 80)
   {
     x+=10;
   }
   else if (rng >= 81 && rng <= 100)
   {
     x-=10;
   }
  }
}
