class Bship{

  float xpos, ypos, xspeed, startPos;


  PImage badShip;
  Bship(float x, float y, float sp,PImage g)
  {
    xpos= x;
    ypos= y;
    yspeed= sp;
    badShip = g;
    startPos = y;
    bypos=random(width);
    yspeed=yspeed*.8;
  }
  
  void display(){
    image(badShip,xpos,ypos,450,650);
  }
  void move()
     
{ypos=ypos+yspeed;

}

 
  boolean reachedBottom() // create function to add new bullets, to shoot.
            {  
              
              if (ypos>=height){
             xpos=random(width);
            return true;

              }
            else{
              return false;
            }
        
              }
   
      
}
            
            

    
   
  
