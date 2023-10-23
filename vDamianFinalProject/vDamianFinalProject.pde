float xpos, ypos, xspeed,bxpos,bypos, yspeed, startPos,xpos2;
PImage goodShip,badShip;
PImage alien,Galien,Walien;
Gship g1;
Bship b1,b;
alien myalien;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
ArrayList<Bship> bships = new ArrayList <Bship>();

void setup()

{
  
  xpos = 500;
  xpos2=900;
 size(700,1000,P2D);
  goodShip = loadImage("ship.png");
 alien = loadImage("alien.PNG");
Galien=loadImage("Galien.jpeg");
Walien=loadImage("Walien.png");
badShip= loadImage("badShip.png");
  imageMode(CENTER);
  rectMode(CENTER);
  b1= new Bship(xpos2,200,10,badShip);
  g1 = new Gship (xpos,800,20,goodShip);
   myalien= new alien();
}
void draw()
{
background(0);
myalien.display();
myalien.move();
g1.display();
g1.move();
b1.display();
b1.move();
for(int i = bullets.size() - 1; i >= 0; i--) // display and move bullet.
      {
        Bullet b = bullets.get(i);
        b.display();
        b.move();
        if(b.reachedTop()) // remove bullets if off screen.
          {
            bullets.remove(i);
          }
      }
      /*for(int i = bships.size() - 1; i >= 0; i--) // display and move bullet.
      {
        Bship b1 = bships.get(i);
        b1.display();
        b1.move();
if(b1.reachedBottom())
{
  b1.ypos= -100;
}*/
     if(b1.reachedBottom())
{
  b1.ypos= -100;
  
          
    } 
      
}


void keyPressed(){
  if(key == CODED&&keyCode == UP)
        
          g1.addBullet();
          
           
}
