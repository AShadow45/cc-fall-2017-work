boolean isClicked = false;

int startX = 0;
int startY = 0;
int endX = 0;
int endY = 700;

int spacing = 10;

int numberDrawn = 0;
int totalLines = 150;

void setup() {
  size(1200, 700); 
  background(48, 21, 58);
  stroke(255);
  strokeWeight(5);
  line(startX, startY + spacing, endX, endY);
  spacing += 10;
}

void draw () {
  println (isClicked);
  //Background Rectangle
  noStroke();
  fill(255, 106, 0, 180);
  rect(40, 40, 1120, 620);

  //Ears
  if (isClicked == true) {
    fill (100, 0, 0);
  } else {
    fill(250, 200, 0);
  }

  noStroke();
  ellipse(height/4 + 330, width/4 - 40, 150, 200);

  noStroke();
  ellipse(height/4 + 520, width/4 - 40, 150, 200);

  //Inner Ear
  if (isClicked == true) {
    fill (60, 0, 0);
  } else {
    fill(240, 190, 0);
  }

  noStroke();
  ellipse(height/4 + 330, width/4 - 40, 100, 150);

  noStroke();
  ellipse(height/4 + 520, width/4 - 40, 100, 150);

  //Head
  if (isClicked == true) {
    fill (175, 0, 0);
  } else {
    fill(255, 255, 0);
  }

  noStroke();
  ellipse(600, 350, 300, 300);

  //Left Eye
  fill(255);
  noStroke();
  ellipse(height/4 + 360, width/4 +10, 80, 70);

  //Right Eye
  fill(255);
  noStroke();
  ellipse(height/4 + 480, width/4 + 10, 80, 70);

  //Left Pupil
  fill(0);
  noStroke();
  ellipse(height/4 + 360, width/4 + 10, 20, 20);

  //Right Pupil
  fill(0);
  noStroke();
  ellipse(height/4 + 480, width/4 + 10, 20, 20);

  //Mouth
  stroke(0);
  line(550, 390, 650, 390);

  if (numberDrawn < totalLines) {
    line(
      startX + spacing, 
      startY, 
      endX + spacing, 
      endY
      );
    spacing += 10;
    println("spacing: " + spacing);

    numberDrawn += 1;
    //numberDrawn = numberDrawn + 1;
  } else {
    spacing = 0;
    numberDrawn = 0;
  }
}

void mousePressed() {

  if (isClicked == true) {
    isClicked = false;
  } else if (isClicked == false) {
    isClicked = true;
  }
}