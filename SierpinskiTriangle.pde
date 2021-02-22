int sideStart =400;
int xStart = 50;
int yStart = 410;

void setup(){
   size(500,500);
}

void draw(){
  
}

public void sierpinski(int x, int y, int len){
  int x2 = x + len/2;
  int y2 = y - len;
  int x3 = x + len;
  int y3 = y;
  stroke(0,0,255);
  
   triangle(x, y, x2, y2, x3, y3);//the triangle
   
len = len/2;
   
   if(len>10){
     sierpinski(x,y,len);
     sierpinski(x+len,y,len);
     sierpinski(x+(len/2),y-(len),len);
     
     
   }
}

void mousePressed() {

  sierpinski(xStart, yStart, sideStart);
}
