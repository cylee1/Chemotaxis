Firefly [] colony; 
Light [] colony1;
void setup()   
{     
	size(350,300);
	colony = new Firefly[50];
	colony1 = new Light[4];
	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Firefly();
  	}
  	for(int x = 0; x < colony1.length; x++)
 	{
 		colony1[x] = new Light();
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
  	for(int x = 0; x < colony1.length; x++)
	{ 
    	colony1[x].walk();
    	colony1[x].show();
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
	int myX1, myY1;
	Light()
	{
		myX1 = (int)(Math.random()*350)+1;
		myY1 = (int)(Math.random()*300)+1;
	}
	void walk()
	{
		myX1 = myX1 + (int)(Math.random()*3)-1;
		myY1 = myY1 + (int)(Math.random()*3)-1;
	}
	void show()
	{
		noStroke();
		fill(255,255,255,(int)(Math.random()*30)+100);
		//ellipse(myX1,myY1,14,14);
		rect(myX1,myY1,9.5,9.5);
		rect(myX1,myY1,12,12);
	}
}