class Star //note that this class does NOT extend Floater
{
  //your code here
  int starColor;
  int starSize;
  int starY;
  int starX;
  public Star()
  {
  	starSize=1+(int)(Math.random()*10);
  	starX=(int)(Math.random()*width);
  	starY=(int)(Math.random()*height);
    starColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
 	{
 		fill(starColor);
 		noStroke();
 		ellipse(starX,starY,starSize,starSize);

 	}
  public void setStarX(int a)
  {
    starX=a;
  }
  public void setStarY(int a)
  {
    starY=a;
  }
}
