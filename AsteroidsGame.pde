//your variable declarations here
Spaceship artoriaPendragon ;
Star[] circleStar;
ArrayList <Asteroids> a;
int numAster;
ArrayList <Bullet> b;
int health;
int healthCounter;
int wordCounter;
int points;
int level;
int letters;
String endGameMessage;
public void setup() 
{
  //your code here
	  size(1200,800);
	  points=0;
	  level=1;
	  letters=0;
	  wordCounter=0;
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
	  healthCounter=1000;
	  health = 1180;
}
public void draw() 
{
  //your code here
	background(0);
	for(int i=0; i<circleStar.length; i++)
	{
	b.get(i).show();
	b.get(i).move();
		for(int ast=0; ast<a.size(); ast++)
		{
			if (dist((float)a.get(ast).getCenterX(),(float)a.get(ast).getCenterY(),(float)b.get(i).getCenterX(),(float)b.get(i).getCenterY())<20)
			{
				a.remove(ast);
				b.remove(i);
				points+=10;
				break;
			}
		}
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
			health-=100;
			healthCounter=0;
		}
	}

	//score board
	fill(255);
	textSize(20);
	textAlign(LEFT);
	text("Score: "+ points,10,110,500,30);
	text("Level: "+ level,10,140,500,30);
	text("Asteroids Left: " + a.size(),10,170,500,30);


	healthCounter++;
	if (healthCounter<10)
	{
		fill(255,0,0);
		rect(10,10,health,100);
	}
	if (health>0&&healthCounter>10)
	{
		fill(0,255,0);
		rect(10,10,health,100);
	}
	//level system
	if(a.size()==0)
	{
		level++;
		for(int i=0; i<numAster*level; i++)
	  {
	  	a.add(new Asteroids());
	  	a.get(i).setMyDirectionX(Math.random()*4*level-(2*level));
	  	a.get(i).setMyDirectionY(Math.random()*4*level-(2*level));
	  }
	}

	endGameMessage="GAME OVER\n" + "Level: " + level + "\nScore: " + points;

	if (health<=0)
	{
			wordCounter++;
			background(0);
			fill(255);
			textSize(50);
			textAlign(CENTER);
			if (wordCounter>10 & letters<endGameMessage.length())
			{
				letters++;
				wordCounter=0;
			}
			text(endGameMessage.substring(0,letters), 600, 300);



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

}

