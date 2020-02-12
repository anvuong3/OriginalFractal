public void setup(){
	size(1000, 1000);
	rectMode(CENTER);
	background(0);
}
public void draw(){
	myFractal(500, 500, 800);
	circleFractal(500, 500, 800);
}
public void mousePressed(){
	circleFractal(250, 250, 450);
}
public void myFractal(int x, int y, int siz){
	stroke((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
	fill(0);
	rect(x,y,siz,siz);
	circle(x,y,siz);
	if(siz > 10){
		myFractal(x,y,siz/2);
		myFractal(x,y*2,siz/2);
	}
}
public void circleFractal(int x, int y, int siz){
	stroke((float)(Math.random() * 255), (float)(Math.random() * 255), (float)(Math.random() * 255));
	fill(0);
	circle(x,y,siz);
	if(siz > 10){
		circleFractal(x/2,y,siz/2);
		circleFractal(x*2,y,siz/2);
		circleFractal(x,y*2,siz/2);
		circleFractal(x,y/2,siz/2); 
	}
}
