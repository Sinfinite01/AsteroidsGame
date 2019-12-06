//your variable declarations here
Spaceship artoriaPendragon ;
Star[] circleStar;
ArrayList <Asteroids> a;
int numAster;
ArrayList <Bullet> b;
public void setup() 
{
  //your code here
	  size(1200,800);
	  artoriaPendragon = new Spaceship();
	  circleStar = new Star[width];
	  numAster=50;
	  a = new ArrayList <Asteroids>();
	  b = new ArrayList <Bullet>();
	  for(int i=0; i<circleStar.length; i++)
		{
			circleStar[i] = new Star();
		}
	  for(int i=0; i<numAster; i++)
	  {
	  	a.add(new Asteroids());
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
	for(int i=0; i<b.size(); i++)
	{
	b.get(i).show();
	b.get(i).move();
	}
	artoriaPendragon.show();
	artoriaPendragon.move();
	for(int i=0; i<a.size(); i++)
	{
	a.get(i).show();
	a.get(i).move();
		if (dist((float)artoriaPendragon.getCenterX(),(float)artoriaPendragon.getCenterY(),(float)a.get(i).getCenterX(),(float)a.get(i).getCenterY())<20)
		{
			a.remove(i);
		}
	}
}
public void keyPressed()
{
	if (keyCode==LEFT)
	{
		artoriaPendragon.setMyDirectionX(-2);
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
		artoriaPendragon.setMyDirectionX(2);
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
		artoriaPendragon.setMyDirectionY(-2);
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
		artoriaPendragon.setMyDirectionY(2);
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
		artoriaPendragon.setMyPointDirection((double)Math.random()*360+1);
		artoriaPendragon.setCenterX((int)(Math.random()*width)+1);
		artoriaPendragon.setCenterY((int)(Math.random()*height)+1);
		for(int i=0; i<circleStar.length; i++)
		{
			circleStar[i].setStarX((int)(Math.random()*width+1));
			circleStar[i].setStarY((int)(Math.random()*height+1));
		}
	}
	if(keyCode==71)
	{
		b.add(new Bullet(artoriaPendragon));
	}
	System.out.println(artoriaPendragon.getCenterX());

}

