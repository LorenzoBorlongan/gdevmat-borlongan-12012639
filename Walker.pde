class Walker
{
   public PVector Pposition = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocitylimit = 10;
 public float scale = 15;
  PVector position = new PVector();
  PVector Wsize = new PVector();
   public void update()
 {
   this.acceleration = PVector.random2D();
   this.velocity.add(this.acceleration);
   this.velocity.limit(velocitylimit);
   this.Pposition.add(this.velocity);
 }
 
  void render()
  {
    circle(position.x, position.y, Wsize.x );
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
