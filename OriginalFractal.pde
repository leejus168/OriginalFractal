public void setup()
{
 size(500,500);
 rectMode(CENTER);
}
public void draw()
{
  background(0);
  fill(5,100,200);
  myFractal(250,250,150,200);
}
public void myFractal(int x, int y, int sizX, int sizY)

{
  rect(x,y,sizX,sizY);
  if(sizX > 4)
  {
    myFractal(x+sizX,y+sizY,sizX/2,sizY/2);
    myFractal(x-sizX,y-sizY,sizX/2,sizY/2);
    myFractal(x+sizX,y-sizY,sizX/2,sizY/2);
    myFractal(x-sizX,y+sizY,sizX/2,sizY/2);
    myFractal(x-sizX,y+sizY,sizX/2,sizY/2);
    myFractal(x+sizX,y-sizY,sizX/2,sizY/2);
  }
}
