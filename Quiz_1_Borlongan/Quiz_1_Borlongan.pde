void setup()
{
 size(1280, 720, P3D);
 camera(0, 0, -(height/2.0) / tan(PI*30.0 / 100), 0, 0, 0, 0, -1, 0);
 
}

void draw()
{

  drawCartesianPlane();
  FFunctionGraph();
  SFunctionGraph();
  TFunctionGraph();
 
}

void drawCartesianPlane()
{
  background(0);
 strokeWeight(1);
 color white = color(255, 255, 255);
 fill(white);
 stroke(white);
 line(300, 0, -300, 0);
 line(0, 300, 0, -300);
 
 for(int i = -300; i <=300; i+=10)
 {
  line(i, -5, i, 5); 
  line(-5, i, -5, i);
 }
}
void drawLinearFunction()
{
  //f(x) = x+ 2
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  
  for (int x = -200; x <= 200; x++)
  {
    circle(x, x + 2, 5);
  }
}
void QuadraticFunction()
{
  //f(x) = x^2 + 2x - 5
  //let x be 2, then y is 3
  //let x be -1, then y = -6
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  for (float x = -200; x <= 200; x+=0.1f)
  {
    circle(x*5, (float)Math.pow(x, 2) + (x * 2) - 5, 5);  
  }
}
 
 void FFunctionGraph()
 {
  //f(x) =x^2 - 15x -4
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  for (float x = -200; x <= 200; x+=0.1f)
  {
    circle(x*5, (float)Math.pow(x, 2) + (x * 15) - 3, 5);
  }
 }
 
  void SFunctionGraph()
 {
  //f(x) =-5x + 30
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  for (float x = -200; x <= 200; x+=0.1f)
  {
    circle(x*5, (x * -5) + 30, 5);
  }
 }
 
 void TFunctionGraph()
 {
    color white = color(255, 255, 255);
    fill(white);
   stroke(white);
   float Lamplitude = -350f;
   float Hamplitude = 350f;
   while(Lamplitude <= Hamplitude){
     float yy = (float)Math.sin(0.13 * Lamplitude);
     float fy = (float)(yy * 30);
     circle(Lamplitude ,fy , 3);
     Lamplitude+= 0.5f;
   }
 }
  
  
