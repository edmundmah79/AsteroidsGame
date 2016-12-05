//your variable declarations here
Star[] stars = new Star[200];
SpaceShip dragon = new SpaceShip();
Rocket1 topRocket = new Rocket1();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Integer> xList = new ArrayList<Integer>();
ArrayList<Integer> yList = new ArrayList<Integer>();
public void setup() 
{
  //your code here
  size(1000,700);
  background(0);
  for(int i = 0; i < stars.length; i++)
  {
     stars[i] = new Star();
  }
  for(int i = 0; i < 20; i++)
  {
    rocks.add(i, new Asteroid());
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
  for(int i = 0;i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
  }
  dragon.show();
  dragon.move();
  topRocket.move();
}
public void keyPressed()
{
  if(keyCode == UP)
  {
    dragon.accelerate(0.1);
    dragon.move();
    topRocket.accelerate(0.1);
    topRocket.show(); 
  }
  if(keyCode == RIGHT)
  {
    dragon.rotate(3);
    topRocket.rotate(3);
    topRocket.show();
  }
  if(keyCode == LEFT)
  {
    dragon.rotate(-3);
    topRocket.rotate(-3);

  }
  if(keyCode == DOWN)
  {
    dragon.accelerate(-0.1);
    dragon.move();
    topRocket.accelerate(-0.1);
    topRocket.move();
    topRocket.show();
  }
  if(keyCode == 'H')
  {
    int hyperDirection =  (int)(Math.random()*360);
    int hyperX = (int)(Math.random()*1000);
    int hyperY = (int)(Math.random()*700);
    dragon.setPointDirection(hyperDirection);
    dragon.setDirectionX(0);
    dragon.setDirectionY(0);
    dragon.setX(hyperX);
    dragon.setY(hyperY);
    topRocket.setPointDirection(hyperDirection);
    topRocket.setDirectionX(0);
    topRocket.setDirectionY(0);
    topRocket.setX(hyperX);
    topRocket.setY(hyperY);    
  }
}
