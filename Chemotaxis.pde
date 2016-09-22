 // AP Computer Science 
 // Bryan Zin - Block 4 - Mr.Simon

Bacteria [] colony;
Thingy carl;
int r, g, b;


 void setup()   
 {     
 	size(1000,1000);//initialize bacteria variables here   
 	background(0);
 	textSize(36);
 	text("This is my name! Show me yours!", 100, 50);
 	text("Choose your color!", 100, 360);
 	text("Hit 'r' for red, 'g' for green, and 'b' for blue!!", 100, 395);

 	textSize(14);
 	text("For best results, draw with slow, smooth strokes using your mouse.", 100, 420);

 	colony = new Bacteria[50];
 	r = 255;
	g = 255;
	b = 255;
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria 
 	
 	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 }
void mouseDragged()
{
	 carl = new Thingy(); 
	 carl.show();
}
void keyPressed()
{

	if (key == 'r') 
	{
		r = 255;
		g= 0;
		b = 0;	
	}
	else if (key == 'g') 
	{
		r= 0;
		g= 255;
		b= 0;
	}
	else if (key == 'b')
	{
		r = 0;
		g = 0;
		b = 255;
	}

	if (key == 'c') 
	{
		background(0);
	}
}
 class Thingy
 {
 	int myX, myY;
 	Thingy()
 	{
 		myX = mouseX;
 		myY = mouseY;
 	}
 	void show()
 	{
 		fill(r,g,b);
 		ellipse(myX, myY, 10, 10);
 	}
 	
 }

 
 class Bacteria    
 {     
 	int myX, myY, myZ, myZY, myZ1, myZ2;
 	int myIXone, myIYone, myIXtwo, myIYtwo, myIXthree, myIYthree;
 	int myNXone, myNYone, myNXtwo, myNYtwo, myNXthree, myNYthree;
 	
 	Bacteria() 
 	{
 		myX = 100; // x coord for z top horizontal
 		myY = 100; // y coord for z top horizontal
 		myZ = 300; // x coord for Z diagonal
 		myZY = 100; // y coord for Z diagonal 
 		myZ1 = 100; // x coord for Z bottom horizontal
 		myZ2 = 300; // y coord for z bottom horizonal

 		myIXone = 350;
 		myIYone = 100;
 		myIXtwo = 400;
 		myIYtwo = 100;
 		myIXthree = 350;
 		myIYthree = 300;

 		myNXone = 500;
 		myNYone = 100;
 		myNXtwo = 500;
 		myNYtwo = 100;
 		myNXthree = 700;
 		myNYthree = 100;
 	}  
 	void show()
 	{
 		stroke(255,0,0);
 		ellipse(myX, myY, 10, 10); // top horizontal for Z
 		ellipse(myZ, myZY, 10, 10); // diagonal for Z
 		ellipse(myZ1, myZ2, 10, 10); // bottom horizontal for Z

 		ellipse(myIXone, myIYone, 10, 10); // top horizontal for I
 		ellipse(myIXtwo, myIYtwo, 10, 10); // middle line for I
 		ellipse(myIXthree, myIYthree, 10, 10); // bottom horizontal for I

 		ellipse(myNXone, myNYone, 10, 10); // left vertical for N
 		ellipse(myNXtwo, myNYtwo, 10, 10); // diagonal for N
 		ellipse(myNXthree, myNYthree, 10, 10); // right vertical for N
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*7);
 		myZ = myZ - (int)(Math.random()*1)-5;
 		myZY = myZY + (int)(Math.random()*1)+5;
 		myZ1 = myZ1 + (int)(Math.random()*7);

 		myIXone = myIXone + (int)(Math.random()*7);
 		myIYtwo = myIYtwo + (int)(Math.random()*7);
 		myIXthree = myIXthree + (int)(Math.random()*7);

 		myNYone = myNYone + (int)(Math.random()*7);
 		myNXtwo = myNXtwo + (int)(Math.random()*1)+5;
 		myNYtwo = myNYtwo + (int)(Math.random()*1)+5;
 		myNYthree = myNYthree + (int)(Math.random()*7);
 		// Letter Z
 		if (myX >=300)
 		{
 			myX = 100;
 		}

 		if (myZ <= 100)
 		{
 			myZ = 300;
 		}

 		if (myZY >= 300)
 		{
 			myZY = 100;
 		}

 		if (myZ1 >= 300)
 		{
 			myZ1 = 100;
 		}


 		// Letter I 
 		if (myIXone >= 450)
 		{
 			myIXone = 350;
 		}

 		if (myIYtwo >= 300)
 		{
 			myIYtwo = 100;
 		}

 		if (myIXthree >= 450)
 		{
 			myIXthree = 350;
 		}

 		// letter N
 		if (myNYone >= 300)
 		{
 			myNYone = 100;
 		}

 		if (myNXtwo >= 700)
 		{
 			myNXtwo = 500;
 		}

 		if (myNYtwo >= 300)
 		{
 			myNYtwo = 100;
 		}

 		if (myNYthree >= 300)
 		{
 			myNYthree = 100;
 		}
 	}
}
