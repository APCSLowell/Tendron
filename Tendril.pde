public void setup()
{
  size(500, 500);  
  background(255);
  noLoop();
}

public void draw()
{
  background(255);
  // initial cluster segment length, startX, startY
  Cluster c = new Cluster(50, 250, 250);
}
public void mousePressed()
{
  redraw();
}
