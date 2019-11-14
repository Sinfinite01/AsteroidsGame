//your variable declarations here
Spaceship artoriaPendragon ;
public void setup() 
{
  //your code here
  size(500,500);
  artoriaPendragon = new Spaceship();
}
public void draw() 
{
  //your code here
  background(0);
  artoriaPendragon.show();
  artoriaPendragon.move();
}
public void keyPressed()
{
	if (keyCode==LEFT)
	{
		artoriaPendragon.setMyDirectionX(-1);
	}
	if (keyCode==RIGHT)
	{
		artoriaPendragon.setMyDirectionX(1);
	}
	if (keyCode==UP)
	{
		artoriaPendragon.setMyDirectionY(-1);
	}
	if (keyCode==DOWN)
	{
		artoriaPendragon.setMyDirectionY(1);
	}

}

