void setup()
{
 size(1020, 720, P3D);
 camera(0, 0, -(height/2.0)/ tan(PI*30.0 / 100.0), 0, 0, 0, 0, -1, 0);
}

Walker myWalker = new Walker();//creates an instance of our walker class
randomWalkBiased BiasedWalker = new randomWalkBiased ();

void draw()
{
  noStroke();
  float rng = random(5);
  println(rng);
  int rgb = int(random(0, 255)), rgb2 = int(random(0, 255)),
  rgb3 = int(random(0, 255)), a = int(random(50, 100));
  fill(rgb, rgb2, rgb3, a);
  
   myWalker.FirstWalk();
  myWalker.render();
  
  BiasedWalker.SecondWalk();
  BiasedWalker.render();
  

}
