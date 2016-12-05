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
      myCenterX = 500;
      myCenterY = 350;
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
    public void show ()  //Draws the floater at the current position  
    {              
      //convert degrees to radians for sin and cos         
      fill(myColor);
      double dRadians = myPointDirection*(Math.PI/180);                 
      int xRotatedTranslated, yRotatedTranslated;    
      beginShape();         
      for(int nI = 0; nI < corners; nI++)    
      {     
        //rotate and translate the coordinates of the floater using current direction 
        xRotatedTranslated = (int)((xCorners[nI]* Math.cos(dRadians)) - (yCorners[nI] * Math.sin(dRadians))+myCenterX);     
        yRotatedTranslated = (int)((xCorners[nI]* Math.sin(dRadians)) + (yCorners[nI] * Math.cos(dRadians))+myCenterY);      
        vertex(xRotatedTranslated,yRotatedTranslated);     
        xList.add(nI, xRotatedTranslated);
        yList.add(nI, yRotatedTranslated);
      }   
      endShape();  
    }    
}