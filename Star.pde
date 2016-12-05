class Star
{
    private int myX, myY;
    Star()
    {
      myX = (int)(Math.random()*1000);
      myY = (int)(Math.random()*700);
    }
    public void show()
    {
      fill(135,206,235);
      noStroke();
      ellipse(myX,myY,3,3);
    }
}