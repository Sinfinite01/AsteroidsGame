//your variable declarations here
Spaceship artoriaPendragon ;
Star[] circleStar;
public void setup() 
{
  //your code here
  size(500,500);
  artoriaPendragon = new Spaceship();
  circleStar = new Star[500];
  for(int i=0; i<circleStar.length; i++)
	{
		circleStar[i] = new Star();
	}
}
public void draw() 
{
  //your code here
  background(0);
  for(int i=0; i<circleStar.length; i++)
  {
 	circleStar[i].show();
  }
  artoriaPendragon.show();
  artoriaPendragon.move();
}
public void keyPressed()
{
	if (keyCode==LEFT)
	{
		artoriaPendragon.setMyDirectionX(-1);
		if (artoriaPendragon.getMyPointDirection()>0 && artoriaPendragon.getMyPointDirection()<180)
		{
			artoriaPendragon.addMyPointDirection(15);
		}
		if (artoriaPendragon.getMyPointDirection()<=0 && artoriaPendragon.getMyPointDirection()>-180 || artoriaPendragon.getMyPointDirection()>180)
		{
			artoriaPendragon.addMyPointDirection(-15);
		}
	}
	if (keyCode==RIGHT)
	{
		artoriaPendragon.setMyDirectionX(1);
		if (artoriaPendragon.getMyPointDirection()>=0 && artoriaPendragon.getMyPointDirection()<=180)
		{
			artoriaPendragon.addMyPointDirection(-15);
		}
		if (artoriaPendragon.getMyPointDirection()<0 || artoriaPendragon.getMyPointDirection()>180 && artoriaPendragon.getMyPointDirection()<360)
		{
			artoriaPendragon.addMyPointDirection(15);
		}
	}
	if (keyCode==UP)
	{
		artoriaPendragon.setMyDirectionY(-1);
		if (artoriaPendragon.getMyPointDirection()>=90 && artoriaPendragon.getMyPointDirection()<=270)
		{
			artoriaPendragon.addMyPointDirection(15);
		}
		if (artoriaPendragon.getMyPointDirection()<90 && artoriaPendragon.getMyPointDirection()>-90 || artoriaPendragon.getMyPointDirection()>270)
		{
			artoriaPendragon.addMyPointDirection(-15);
		}
	}
	if (keyCode==DOWN)
	{
		artoriaPendragon.setMyDirectionY(1);
		if (artoriaPendragon.getMyPointDirection()>=90 && artoriaPendragon.getMyPointDirection()<=270)
		{
			artoriaPendragon.addMyPointDirection(-15);
		}
		if (artoriaPendragon.getMyPointDirection()<90|| artoriaPendragon.getMyPointDirection()>270 && artoriaPendragon.getMyPointDirection()<450)
		{
			artoriaPendragon.addMyPointDirection(15);
		}
	}
	if(keyCode==72)
	{

	}
	System.out.println(artoriaPendragon.getMyPointDirection());

}

