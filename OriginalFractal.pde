public void setup()
{
 size(1024, 1024);
 background(0);
 fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}

public void draw()
{
 fractal(400,612,512);
}

public void fractal(int x, int y, int control) 
{
    ellipse(x, y, control, control);
    ellipse(x+control/2, y, control, control);
    ellipse(x+control/2, y-control/2, control, control);
    ellipse(x, y-control/2, control, control);
if (control>30){
     fractal(x+control/8, y-control/8, control/2);
}
}
