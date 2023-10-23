float xpos, ypos, xspeed,bxpos,bypos, yspeed, startPos,xpos2,c1,c2,c3;
PImage goodShip,badShip;
PImage alien,Galien,Walien,boom;
Gship g1;
Bship b1;
alien myalien;
boolean hit1=false;
boolean hit2=false;
boolean hit3=false;
boolean d =false;
boolean draw=false;
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
ArrayList<Bship> bships = new ArrayList <Bship>();

void setup(){
  xpos = 500;
  xpos2=900;
  c1=-100;
  c2=-100;
  c3=-100;
  size(700,1000,P2D);
  goodShip = loadImage("ship.png");
  alien = loadImage("alien.PNG");
  Galien=loadImage("Galien.jpeg");
  Walien=loadImage("Walien.png");
  badShip= loadImage("badShip.png");
  boom=loadImage("collison.png");
  imageMode(CENTER);
  rectMode(CENTER);
  b1= new Bship(xpos2,200,10,badShip);
  g1 = new Gship (xpos,800,20,goodShip);
  myalien= new alien();
  
}

void draw(){
  background(0);
 
  image(boom,c1,20,200,120);
  image(boom,c2,150,150,120);
  image(boom,c3,250,150,120);
myalien.display();
 myalien.move();
  g1.display();
  g1.move();
  //b1.display();
 // b1.move();
 
  for(int i = bullets.size() - 1; i >= 0; i--) // display and move bullet.
      {
        Bullet b = bullets.get(i);
        b.display();                                                                                                                  
        b.move();
    
        if(b.reachedTop()) // remove bullets if off screen.
          {
            bullets.remove(i);
          }
        if (b.collision1()) {
          myalien.xspeed2=0;
          c3=myalien.x2;
          myalien.h3=0;
          hit1=true;
          bullets.remove(i);
          println("bottom alien shot");
        }
        
        if (b.collision2()) {
           myalien.xspeed1=0;
           c2=myalien.x1;
           myalien.h2=0;
           hit2=true;
          bullets.remove(i);
          println("middle alien shot");
        }
        
        if (b.collision3()) {
            myalien.xspeed=0;
           c1=myalien.x;
           myalien.h1=0;
           hit3=true;
          bullets.remove(i);
          println("top alien shot");
        }
        if(hit1&&hit2&&hit3){
          background(0);
          color(100,0,0);
          textSize(100);
          text("Victory", 200,500);
          textSize(50);
          text("Press R to reset",160,630);

          d=true;
          
        }
        if(d){
          delay(300);
          d=false;
        }
        
        
      }
      /*for(int i = bships.size() - 1; i >= 0; i--) // display and move bullet.
      {
        Bship b1 = bships.get(i);
        b1.display();
        b1.move();r
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
  if ( key == 'r' ) reset();
  if(key == CODED&&keyCode == UP)
        
          g1.addBullet();
          
           
}
void reset() {
  println("reset");
            myalien.xspeed2=2;
          c3=-100;
          myalien.h3=100;
          hit1=false;
               myalien.xspeed1=2;
           c2=-100;
           myalien.h2=100;
           hit2=false;
              myalien.xspeed= 2;
           c1=-100;
           myalien.h1=100;
           hit3=false;
}
