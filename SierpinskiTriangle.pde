public void setup()
{
  size(400,400);
  background(50);
}

public void draw()
{
  sierpinski(30,360,350);
  stroke(255);
}

public void mousePressed()//optional
{
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}

public void sierpinski(int x,int y,int len) 
{
  if (len<=30)
  {
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else 
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}

