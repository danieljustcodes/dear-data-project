void setup() {
  size(700, 400);
  textAlign(CENTER);
}

void draw() {
  background(0, 240, 225);
  noStroke();
  
  fill(35, 45, 70);
  textSize(26);
  text("My Journey to Class", 350, 55);
  
  textSize(16);
  text("Early <---------- ON TIME ----------> Late", 350, 145);
  
  stroke(80);
  line(150, 190, 550, 190);
  fill(190, 70, 65);
  
  ellipse(410, 190, 18, 18);
  fill(230, 175, 50);
  
  textSize(28);
  text("* * * * ", 350, 260);
  fill(50);
  
  textSize(14);
  text("Example: 12/10/2026, IN007, 6 minutes late, Eating, readiness 4/5, Happy", 350, 320);
}
