void setup()
{
  size(500, 500);
  halfWidth = width / 2;
  halfHeight = height / 2;  
  
  squares.add(new Square(0, 0, color(0, 255, 0)));
  squares.add(new Square(halfWidth, 0, color(255, 0, 0)));
  squares.add(new Square(0, halfHeight, color(0, 0, 255)));
  squares.add(new Square(halfWidth, halfHeight, color(255, 255, 0)));
  
  addSequence();
  addSequence();
  addSequence();
  addSequence();
  
}

float halfWidth, halfHeight;

ArrayList<Square> squares = new ArrayList<Square>();
ArrayList<Integer> sequence = new ArrayList<Integer>();

void addSequence()
{
  sequence.add(new Integer((int) random(0, 4)));
}

void draw()
{
  for(int i = 0 ; i < squares.size() ; i ++)
  {
    squares.get(i).display(false);
  }
}
