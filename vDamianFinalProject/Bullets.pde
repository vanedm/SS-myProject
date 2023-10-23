class Bullet
{float bxpos,bypos,yspeed,xpos,ypos;
  
  Bullet(float x, float y, float sp)
  {
    bxpos = x;
    bypos = y;
    yspeed= sp;
    
    
  }
  
  void display()
  {
    strokeWeight(3);
    stroke(#FFD427);
    rect(bxpos,bypos,7,35);
    fill(#FF6F27);
    noStroke();
    rect(bxpos,bypos,4,35);
  }
  
  void move(){
       
        bypos = bypos - yspeed;  
      }
   
  boolean reachedTop(){
    return (bypos<0);
  }
  
}
