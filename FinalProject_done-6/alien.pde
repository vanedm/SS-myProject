class alien{

int xspeed=3;
int xspeed1=-2;
int xspeed2=2;
float x,x1,x2,h1,h2,h3;

alien(){
  x = random(width);
  x1=random(width);
  x2=random(width);
  h1=100;
  h2=100;
  h3=100;
  

}

void display(){
  image(alien,x,20,200,h1);
  image(Walien,x1,150,150,h2);
  image(Galien,x2,250,150,h3);
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
