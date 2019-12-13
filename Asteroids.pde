class Asteroids extends Floater
{
	private int rockSpeed;
	public Asteroids()
	{
		 rockSpeed=(int)(Math.random()*10+1);
		 corners = 3;  //the number of corners, a triangular floater has 3   
	 	 xCorners = new int[corners];
	     yCorners = new int[corners];
	     xCorners[0]=-8; //array   
	     yCorners[0]=-8; //array   
	     xCorners[1]=16; //array   
	     yCorners[1]=-0;
	     xCorners[2]=-8; //array   
	     yCorners[2]=8;
	     myColor=125;   
	     myCenterX=(int)(Math.random()*width+1);
	     myCenterY=(int)(Math.random()*height+1); //holds center coordinates   
	     myDirectionX=(Math.random()*4-2);
	     myDirectionY=(Math.random()*4-2); //holds x and y coordinates of the vector for direction of travel   
	     myPointDirection=0; //holds current direction the ship is pointing in degrees  
	} 
	public void move()
	{
		super.move();
		turn(rockSpeed);
	}
	public double getCenterX()
	{
		return myCenterX;
	}
	public double getCenterY()
	{
		return myCenterY;
	}
	public void setMyDirectionX(double a)
	{
		myDirectionX=a;
	}
	public void setMyDirectionY(double a)
	{
		myDirectionY=a;
	}
}

		
		
