//your variable declarations here
Star[] stars = new Star[200];
SpaceShip dragon = new SpaceShip();
Asteroid[] rocks = new Asteroid[20];
public void setup() 
{
  //your code here
  size(800,800);
  background(0);
  dragon.setX(400);
  dragon.setY(400);
  dragon.setDirectionX(0);
  dragon.setDirectionY(0);
  dragon.setPointDirection(0);
  for(int i = 0; i < stars.length; i++)
  {
     stars[i] = new Star();
  }
  for(int i = 0; i < rocks.length; i++)
  {
    rocks[i] = new Asteroid();
  }
}

public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < stars.length; i++)
  {
    stars[i].show();
  }
  for(int i = 0;i < rocks.length; i++)
  {
    rocks[i].show();
    rocks[i].move();
  }
  dragon.show();
  dragon.move();
}

class Star
{
    private int myX, myY;
    Star()
    {
      myX = (int)(Math.random()*800);
      myY = (int)(Math.random()*800);
    }
    public void show()
    {
      color(255,255,255);
      ellipse(myX,myY,3,3);
    }
}
class SpaceShip extends Floater  
{   
    //your code here
    SpaceShip()  
    {
      corners = 38;
      xCorners = new int[corners];
      yCorners = new int[corners];
      int[] xS = {-4,2,2,4,8,17,8,4,2,2,-4,-8,-6,-4,-6,-4,-6,-8,-6,-4,-6,-4,-6,-8,-19,-8,-6,-4,-6,-4,-6,-8,-6,-4,-6,-4,-6,-8};
      int[] yS = {18,15,2,2,6,0,-6,-2,-2,-15,-18,-16,-15,-15,-13,11,-10,-12,-8,-8,-6,-4,-4,-2,0,2,4,4,6,8,8,12,10,11,13,15,15,16};
      xCorners = xS;
      yCorners = yS;    
      myColor = 200;
      myCenterX = 400;
      myCenterY = 400;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
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
}
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
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
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
abstract class Floater //Do NOT modify the Floater class! Make changes in the SpaceShip class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setX(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void rotate (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

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
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    //convert degrees to radians for sin and cos         
    double dRadians = myPointDirection*(Math.PI/180);                 
    int xRotatedTranslated, yRotatedTranslated;    
    beginShape();         
    for(int nI = 0; nI < corners; nI++)    
    {     
      //rotate and translate the coordinates of the floater using current direction 
      xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
      yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
      vertex(xRotatedTranslated,yRotatedTranslated);    
    }   
    endShape(CLOSE);  
  }   
} 
public void keyPressed()
{
  if(keyCode == UP)
  {
    dragon.accelerate(0.15);
    dragon.move();
  }
  if(keyCode == RIGHT)
  {
    dragon.rotate(3);
  }
  if(keyCode == LEFT)
  {
    dragon.rotate(-3);
  }
  if(keyCode == DOWN)
  {
    dragon.accelerate(-0.15);
    dragon.move();
  }
  if(keyCode == 'H')
  {
    dragon.setPointDirection((int)(Math.random()*360));
    dragon.setDirectionX(0);
    dragon.setDirectionY(0);
    dragon.setX((int)(Math.random()*800));
    dragon.setY((int)(Math.random()*800));
  }
}
