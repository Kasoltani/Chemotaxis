Bacteria[] bob;
 void setup(){        
 	bob = new Bacteria[50];
 	for(int i = 0; i < bob.length;i++){
 		bob[i] = new Bacteria();
 	}
 	background(0);
 	size(600,600);
 }   
 void draw(){    
 	//background(0);
 	for(int i=0;i < bob.length;i++){
    	bob[i].show();
    	bob[i].move();
  	}
 }  
 class Bacteria    
 {     
 	int myX,myY,col;
 	Bacteria(){
 		myX = width/2;
 		myY = height/2;
 		col = color(random(100,255),random(100,255),random(100,255));
 	}  

 	void show(){
 		fill(col);
 		ellipse(myX,myY,3,3);
 	}

 	void move(){
 		myX += floor(random(-2,3));
 		myY += floor(random(-2,3));
 	}
 }    