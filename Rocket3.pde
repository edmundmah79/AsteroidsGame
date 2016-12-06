class Rocket3 extends Floater
{
  private int myColor1, myColor2, myColor3;
  Rocket3()
  {
    myColor1 = 255;
    myColor2 = 0;
    myColor3 = 0;
    myCenterX = dragon.getX();
    myCenterY = dragon.getY();
    myDirectionX = dragon.getDirectionX();
    myDirectionY = dragon.getDirectionY();
    myPointDirection = dragon.getPointDirection();
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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor1,myColor2,myColor3);   
    stroke(myColor1,myColor2,myColor3);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180); 
    triangle(xList.get(1),yList.get(1), xList.get(1)+(2*sin((float)dRadians))+(10*cos((float)dRadians)), yList.get(2)+(2*cos((float)dRadians))+(10*sin((float)dRadians)), xList.get(2), yList.get(2));               
  }
  public void move ()   //move the floater in the current direction of travel
  {            
    myCenterX = dragon.getX();
    myCenterY = dragon.getY();
    myDirectionX = dragon.getDirectionX();
    myDirectionY = dragon.getDirectionY();
    myPointDirection = dragon.getPointDirection();
    //wrap around screen    
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
}