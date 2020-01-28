public class Cluster
{
    public final static int NUM_STEMS = 7; //number of stems/leafs per cluster

    public Cluster(int len, int x, int y)
    {
        for(int i = 0; i < NUM_STEMS; i++)
        {
          Tendril t = new Tendril();
          t.show(len,Math.PI * 2/NUM_STEMS * i,x,y);
        }
    }
}
