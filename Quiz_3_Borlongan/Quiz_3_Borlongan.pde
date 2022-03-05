void setup()
{
 size(1020, 720, P3D);
 camera(0, 0, -(height/2.0)/ tan(PI*30.0 / 100.0), 0, 0, 0, 0, -1, 0);
}
void draw()
{

  float Fgaussian = randomGaussian();
  float Sgaussian = randomGaussian();
  float Cgaussian = randomGaussian();
  
  float FstandardDeviation = int (random(-640, 640));
  float SstandardDeviation = int (random(-640, 640));
  float CstandardDeviation = int (random(1, 50));
  float mean = int (random(1, 5));
  float Cmean = int (random(1, 20));
  
  float x = FstandardDeviation * Fgaussian + mean;
  float y = SstandardDeviation * Sgaussian + mean;
  float s = CstandardDeviation * Cgaussian + Cmean;
  
  noStroke();
  
  int r = int(random(0, 255)), g = int(random(0, 255)),
  b = int(random(0, 255)), a = int(random(10, 100));
  ;
  fill(r, g, b, a);
  circle(x, y, s);
  
  
}
