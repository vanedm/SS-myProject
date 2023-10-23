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
  
  void move() {
    bypos = bypos - yspeed;
  } 
   
  boolean reachedTop(){
    return (bypos<0);
  }
  
  boolean collision1(){
    return (dist(bxpos, bypos, int(myalien.x2), 200) < 50);
  }
  
  boolean collision2(){
    return (dist(bxpos, bypos, int(myalien.x1), 100) < 50);
  }
  
  
  boolean collision3(){
    return (dist(bxpos, bypos, int(myalien.x), 0) < 50);
  }
  
  
}
