class Gship

{float xpos, ypos, xspeed, startPos;

  PImage goodShip;
  Gship(float x, float y, float sp,PImage g)
  {
    xpos= x;
    ypos= y;
    xspeed= sp;
    goodShip = g;
    startPos = x;
    
  }
  
  void display(){
    image(goodShip,xpos,ypos,650,450);
  }
    
  void move(){ 
    if(keyPressed){
      if(keyCode==RIGHT)
         { xpos = xpos + xspeed;
         if(xpos>=width)
         xpos=width;
         
         }
         if(keyCode==LEFT)
        { xpos = xpos - xspeed;
        if(xpos<=0)
         xpos=0;
        
         }
    }
  }
     void addBullet() // create function to add new bullets, to shoot.
            {  
              bullets.add(new Bullet(xpos,ypos,10)); 
            }
  
  
  
}
