//Left Line
int startX = 100;
int startY = 100;
int endX = 200;
int endY = 110;
//Right Line
int startX1 = 300;
int startY1 = 100;
int endX1 = 400;
int endY1 = 100;

int spacing = 10;

int numberDrawn = 0;
int totalLines = 50;

void setup(){
  size(500,500);
  background(100);
  //noStroke();
  //fill(250,0,190,100);
  //rect(300,10,50,50);
  stroke(255);
  line(startX, startY + spacing, endX, endY);
  
  //line(startX1,startY1,endX1,endY1);
  spacing += 10;
}
  
  void draw() {
   
  if (numberDrawn < totalLines) {
    line(
    startX, 
    startY + spacing, 
    endX, 
    endY+ spacing
    );
    spacing += random(1,15);
    println("spacing: " + spacing);
    
    line(
    startX1, startY1 + spacing, 
    endX1, endY1+ spacing
    );
    spacing += random(1,9);
    println("spacing: " + spacing);
   
  } 
  
  else {
    spacing = 0;
    numberDrawn = 0;
  }
}