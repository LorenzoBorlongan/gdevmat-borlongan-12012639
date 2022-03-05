float st = 0;
public class Walker
{
  public float x, y;
  public float tx = 0, ty = 10000;
  
  void render()
  {
  float scale = 150 * noise(t+10);
  circle(x, y, scale);
  st = st + 0.01;
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640); 
    y = map(noise(ty), 0, 1, -360, 360); 
    
    tx += 0.01f;
    ty += 0.01f;
  }
}
