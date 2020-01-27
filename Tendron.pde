public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  Cluster c = new Cluster();
  // initial segment length, startX, startY
  c.show(50, 250, 250);
}
public void mousePressed()
{
  redraw();
}
