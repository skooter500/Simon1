class Square
{
  color colour;
  PVector position;
  
  Square()
  {
    this(0, 0, color(0,0,0)); // Constructor Chaining
  }
  
  Square(float x, float y, color colour)
  {
    position = new PVector(x, y);
    this.colour = colour;
  }
  
  void display(boolean high)
  {
    float dim = 0;
    if (high)
    {
      dim = 1;
    }
    else
    {
      dim = 0.5f;
    }
    stroke(red(colour) * dim, green(colour) * dim, blue(colour) * dim);
    fill(red(colour) * dim, green(colour) * dim, blue(colour) * dim);
    
    rect(position.x, position.y, halfWidth, halfHeight);   
  }
  
}
