class Star //note that this class does NOT extend Floater
{
  //your code here
  int starColor;
  int starSize;
  int starY;
  int starX;
  public Star()
  {
  	starColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  	starSize=1+(int)(Math.random()*10);
  	starX=(int)(Math.random()*500);
  	starY=(int)(Math.random()*500);
  }
  public void show()
 	{
 		starColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		fill(starColor);
 		noStroke();
 		ellipse(starX,starY,starSize,starSize);

 	}
}
