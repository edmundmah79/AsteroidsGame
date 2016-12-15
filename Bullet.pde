class Bullet extends Floater 
{
  private int myColor1, myColor2, myColor3;
  Bullet()
  {
  	myColor1 = 255;
  	myColor2 = 0;
  	myColor3 = 0;
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
    ellipse(xList.get(25)+5,yList.get(25),5,5);
  }
}