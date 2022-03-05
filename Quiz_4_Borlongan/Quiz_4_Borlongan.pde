float t = 0;
void setup()
{
 size(1280, 720, P3D);
  background(255);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  t = 0;
}

Walker NoiseWalker = new Walker();

void draw()
{
  float r = 255 * noise(t+10);
  float g = 255 * noise(t+15);
  float b = 255 * noise(t+20);
  fill(r, g, b);
  noStroke();
  NoiseWalker.render();
  NoiseWalker.perlinWalk();
  t = t + 0.01;
}
