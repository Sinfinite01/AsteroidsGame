class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		corners = 4;  
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0]=-5;
		yCorners[0]=2;
		xCorners[1]=5;
		yCorners[1]=2;
		xCorners[2]=5;   
		yCorners[2]=-2;
		xCorners[3]=-5;   
		yCorners[3]=-2;
		myColor=color(255,8,0);   
		myCenterX=theShip.getCenterX();
		myCenterY=theShip.getCenterY();
		myPointDirection=theShip.getMyPointDirection();
		double dRadians=myPointDirection*(Math.PI/180);
		myDirectionX=5 * Math.cos(dRadians) + theShip.getMyDirectionX();
		myDirectionY=5 * Math.sin(dRadians) + theShip.getMyDirectionY();
	}
	public void move ()   //move the floater in the current direction of travel
	{      
		myCenterX += myDirectionX;    
		myCenterY += myDirectionY;       
	}   
	public double getCenterX()
	{
		return myCenterX;
	}
	public double getCenterY()
	{
		return myCenterY;
	}
}