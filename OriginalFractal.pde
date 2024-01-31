public void setup()
{
 size(800, 800);
 background(0);
 fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}

public void draw()
{
 fractal(400,412,512);
}

public void fractal(int x, int y, int control)
{
    ellipse(x, y-control/5, control, control);
    ellipse(x+control/5, y+control/5, control, control);
    ellipse(x-control/5, y+control/5, control, control);
if (control>30){
  fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()));
     fractal(x+control/8, y-control/8, control/2);
}
}
