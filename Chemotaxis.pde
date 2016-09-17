 //declare bacteria variables here   

Bacteria [] colony;
 void setup()   
 {     
 	size(1000,1000);//initialize bacteria variables here   
 	background(0);
 	colony = new Bacteria[50];
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
 

 class Bacteria    
 {     
 	int myX, myY, myZ, myZY, myZ1, myZ2;
 	int myIXone, myIYone, myIXtwo, myIYtwo, myIXthree, myIYthree;
 	int myNXone, myNYone, myNXtwo, myNYtwo, myNXthree, myNYthree;
 	Bacteria() //lots of java! 
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
 		myX = myX + (int)(Math.random()*20);
 		myZ = myZ - (int)(Math.random()*1)-5;
 		myZY = myZY + (int)(Math.random()*1)+5;
 		myZ1 = myZ1 + (int)(Math.random()*20);

 		myIXone = myIXone + (int)(Math.random()*20);
 		myIYtwo = myIYtwo + (int)(Math.random()*20);
 		myIXthree = myIXthree + (int)(Math.random()*20);

 		myNYone = myNYone + (int)(Math.random()*20);
 		myNXtwo = myNXtwo + (int)(Math.random()*1)+5;
 		myNYtwo = myNYtwo + (int)(Math.random()*1)+5;
 		myNYthree = myNYthree + (int)(Math.random()*20);
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

 		// letter n
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