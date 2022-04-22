public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 public float r, g, b, a;
 
 public float velocitylimit = 10;
 public float scale = 15;
 
 public float mass = 1;
 
 public float gravitationalConstant = 1;
 
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
   fill(r, g, b, a);
   circle(position.x, position.y, scale);
 }
 
 public PVector calculateAttraction(Walker walker)
 {
   PVector force = PVector.sub(this.position, walker.position); //direction
   float distance = force.mag();
   force.normalize();
   
   distance = constrain(distance, 5, 25);//solves divide by zero
   
   float strength = (this.gravitationalConstant * this.mass * walker.mass)/(distance * distance);
   force.mult(strength);
   return force;
 }
   
 
}
