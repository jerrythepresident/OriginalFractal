public void setup() {
  size(550,550);
  background(0);
  fill(255,(int)(Math.random()*90),(int)(Math.random()*90));
}
public void draw() {
  Rose(275,275,500);
}

public void mouseClicked() {
  if (value == 0) {
    fill(255,(int)(Math.random()*90),(int)(Math.random()*90));
  } 
}

public void Rose(int x, int y, float length) {
  if (length < 10)  {
    ellipse(x,y,length,length);
  }
  else {
    ellipse(x-length/4,y,length/2,length/2);
    ellipse(x-length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
    ellipse(x,y-length/4,length/2,length/2);
    ellipse(x+length*(float)Math.sqrt(2)/8,y-length*(float)Math.sqrt(2)/8,length/2,length/2);
    ellipse(x+length/4,y,length/2,length/2);
    ellipse(x+length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
    ellipse(x,y+length/4, length/2, length/2);
    ellipse(x-length*(float)Math.sqrt(2)/8,y+length*(float)Math.sqrt(2)/8,length/2,length/2);
    Rose(x,y,length/1.5);
  }
}
