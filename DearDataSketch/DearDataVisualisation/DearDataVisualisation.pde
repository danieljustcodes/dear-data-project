String[] data;

void setup() {
  size(1000, 850); data = loadStrings("myData.csv");
}
void draw() {
  background(248, 244, 232);
  fill(35, 45, 70); textSize(24); text("MY JOURNEY TO CLASS", 25, 35);
  textSize(12); text("Late", 320, 75); text("ON TIME", 585, 75); text("Early", 690, 75);
  
  line(350, 80, 700, 80);
  line(map(0, -25, 10, 350, 700), 65, map(0, -25, 10, 350, 700), 760);
  
  for (int i = 1; i < data.length; i++) {
    String[] row = split(data[i], ",");
    float y = 105 + (i - 1) * 21;
    text(row[1] + " " + row[2] + " " + row[3], 25, y);
    if (!row[8].equals("null")) {
      float minutes = float(row[8]);
      float x = map(minutes, -25, 10, 350, 700);
      fill(minutes < 0 ? color(190, 70, 65) : color(45, 135, 100));
      ellipse(x, y - 4, 10, 10);
    }
    fill(45); text(row[7] + " / " + row[9], 740, y);
  }
}
