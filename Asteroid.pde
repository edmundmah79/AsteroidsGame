class Asteroid extends Floater
{
  private int asteRotate;
  private int asteXMove;
  private int asteYMove;
  Asteroid()
  {
    corners = 25;
    xCorners = new int[corners];
    yCorners = new int[corners];
    int[] xS = {-8,-10,-14,-16,-20,-24,-22,-24,-24,-10,2,6,10,14,16,24,24,22,20,20,18,16,10,6,-6};
    int[] yS = {-24,-24,-22,-20,-18,-14,-10,-6,-2,12,16,14,16,14,12,-2,-8,-14,-16,-18,-20,-20,-18,-18,-22};
    xCorners = xS;
    yCorners = yS;
    myColor = 100;
    myCenterX = (int)(Math.random()*1000);
    myCenterY = (int)(Math.random()*700);
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    asteRotate = (int)(Math.random()*7)-3;
    asteXMove = (int)(Math.random()*7)-3;
    asteYMove = (int)(Math.random()*7)-3;
  }
  public void move()
  {
    myPointDirection += asteRotate; 
    myCenterX += asteXMove;
    myCenterY += asteYMove;
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    }   
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }
  public void setX(int x) {myCenterX = x;}
  public int getX() {return (int)myCenterX;}
  public void setY(int y) {myCenterY = y;}
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
  public void setRot(int x) {asteRotate = x;}
  public int getRot() {return asteRotate;} 
}