class alien{


int xspeed=3;
int xspeed1=-2;
int xspeed2=2;
float x,x1,x2;
alien(){
  x = random(width);
 x1=random(width);
 x2=random(width);
  

}

void display(){
  image(alien,x,0,200,100);
image(Galien,x1,200,150,100);
image(Walien,x2,100,150,100);
}
 void move(){
    x = x + xspeed;
 x1 = x1 + xspeed1;
 x2 = x2 + xspeed2;
 

  //ball too far left/right
  if ((x < 0) || (x > width)) {
    xspeed = xspeed * -1;
  }
if ((x1 < 0) || (x1 > width)) {
    xspeed1 = xspeed1 * -1;
  }
  if ((x2 < 0) || (x2 > width)) {
    xspeed2 = xspeed2 * -1;
  }
 }
}
