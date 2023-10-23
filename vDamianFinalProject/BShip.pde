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
    
  }
  
  void display(){
    image(badShip,bypos,ypos,450,650);
  }
  void move()
     
{ypos+=yspeed;
}


  boolean reachedBottom() // create function to add new bullets, to shoot.
            {  
              
              if (ypos>=height){
            return true;
              }
            else{
              return false;
            }
        
              }
      
}
            
            

    
   
  
