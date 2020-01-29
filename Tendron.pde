public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster(50, 250, 250); // initial segment length, startX, startY
}
public void mousePressed()
{
  redraw();
}
