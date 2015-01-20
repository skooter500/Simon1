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
  
  printSequence();
  
}

float halfWidth, halfHeight;
int current = 0;
int gameState = 0;

ArrayList<Square> squares = new ArrayList<Square>();
ArrayList<Integer> sequence = new ArrayList<Integer>();

void addSequence()
{
  sequence.add(new Integer((int) random(0, 4)));
}

void printSequence()
{
  for(Integer i: sequence)
  {
    println(i.intValue());
  }
}

   
void draw()
{   
  int flash = -1;

   if (frameCount % 30 == 0 && gameState == 0)
    {
      flash = sequence.get(current).intValue();
      current ++;
      if (current == sequence.size())
      {
        gameState = 1;
        current = 0;
      }
    }
   
  for(int i = 0 ; i < squares.size() ; i ++)
  {
    if (i == flash)
    {
      squares.get(i).display(true);
    }     
    else
    {
      squares.get(i).display(false);
    }
  }
}
