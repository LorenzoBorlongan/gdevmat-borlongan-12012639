public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 public float r, g, b, a;
 
 public float velocitylimit = 10;
 public float scale = 15;
 
 public float mass = 1;
 
 public  Walker()
 {
   
 }
 public void applyForce(PVector force)
 {
   PVector f = PVector.div(force, this.mass);
   this.acceleration.add(force);  //force accumulation 
 }
 
 public void update()
 {
   //this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocitylimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0); //reset acceleration
 }
 
 public void render()
 {
   circle(position.x, position.y, scale);
 }
   
 
}
