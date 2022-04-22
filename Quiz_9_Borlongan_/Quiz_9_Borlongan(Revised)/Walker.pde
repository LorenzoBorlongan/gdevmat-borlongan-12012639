public class Walker
{
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 public float r, g, b, a;
 
 public float velocitylimit = 10;
 public float scale = 15;
 
 public float mass = 1;
 
 public void applyForce(PVector force)
 {
   PVector f = PVector.div(force, this.mass);
   this.acceleration.add(force);  //force accumulation 
 }
 
 public void update()
 {
   this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocitylimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0); //reset acceleration
 }
 
 public void render()
 {
   circle(position.x, position.y, scale);
   fill(r, g, b, a);
 }
 
 public void CheckEdges()
 {
   if(this.position.x > Window.right)
   {
     this.position.x = Window.left;
   }
   else if(this.position.x < Window.left)
   {
     this.position.x = Window.right;
   }
   
    else if(this.position.y < Window.top)
   {
     this.position.y = Window.bottom;
   }
    else if(this.position.y < Window.bottom)
   {
     this.position.y = Window.top;
   }
   

 }
 
}
