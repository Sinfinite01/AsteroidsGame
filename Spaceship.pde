class Spaceship extends Floater  
{   
    //your code here
    double spaceSpeed;
  public Spaceship(){
	  corners = 3;  //the number of corners, a triangular floater has 3   
	  xCorners = new int[corners];
	  yCorners = new int[corners];
	  xCorners[0]=-8; //array   
	  yCorners[0]=-8; //array   
	  xCorners[1]=16; //array   
	  yCorners[1]=-0;
	  xCorners[2]=-8; //array   
	  yCorners[2]=8;
	  myColor=255;   
	  myCenterX=myCenterY=250; //holds center coordinates   
	  myDirectionX=myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
	  myPointDirection=0; //holds current direction the ship is pointing in degrees  

  }  
  public double getMyDirectionX()
  {
  	return myDirectionX;
  }
  public double getMyDirectionY()
  {
  	return myDirectionY;
  }
  public void setMyDirectionX(double a)
  {
  	myDirectionX=a;
  }
  public void setMyDirectionY(double a)
  {
  	myDirectionY=a;
  }
  public double getMyPointDirection()
  {
  	return myPointDirection;
  }
  public void addMyPointDirection(double a)
  {
  	myPointDirection+=a;
  }
  public void setMyPointDirection(double a)
  {
  	myPointDirection=a;
  }
  public void setCenterX(double a)
  {
  	myCenterX=a;
  }
  public double getCenterX()
  {
  	 return myCenterX;
  }
  public void setCenterY(double a)
  {
  	myCenterY=a;
  }


}
