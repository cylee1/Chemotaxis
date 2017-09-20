Firefly [] colony; 
void setup()   
{     
	size(350,300);
	colony = new Firefly[50];
	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Firefly();
  	}
}   
void draw()   
{   
	background(10,10,40);
	for(int i = 0; i < colony.length; i++)
	{
    	colony[i].walk();
    	colony[i].show(); 
  	}
}  
class Firefly
{
	int myX, myY;
	Firefly()
	{
		myX = (int)(Math.random()*350)+1;
		myY = (int)(Math.random()*300)+1;
	}
	void walk()
	{
		myX = myX + (int)(Math.random()*3)-1;
		myY = myY + (int)(Math.random()*3)-1;
	}
	void show()
	{
		noStroke();
		fill((int)(Math.random()*100)+150, (int)(Math.random()*100)+150, 0, (int)(Math.random()*250)+1);
		rect(myX,myY,4,4);
	}
}

class Light
{
	int myX, myY;
	Light()
	{
		myX = (int)(Math.random()*350)+1;
		myY = (int)(Math.random()*300)+1;
	}
	void walk()
	{
		myX = myX + (int)(Math.random()*2)-1;
		myY = myY + (int)(Math.random()*2)-1;
	}
	void show()
	{
		noStroke();
		fill(0,0,0,(int)(Math.random()*250)+1);
		ellipse(myX,myY,6,6);
	}
}