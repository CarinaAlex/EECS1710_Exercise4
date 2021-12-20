PFont f;

void setup() {
  size(1080, 800);
  background(0);

  printArray(PFont.list());
  f = createFont("AcademyEngravedLetPlain-48.vlw", 24);
  textFont(f);
  textAlign(CENTER, CENTER);
} 

void draw() {
  background(28, 132, 10);

  int margin = 10;
  translate(margin*4, margin*4);

  int gap = 45;
  int counter = 40;
  
  for (int y = 0; y < height-gap; y += gap) {
    for (int x = 0; x < width-gap; x += gap) {

      char letter = char(counter);
      
      if (letter == 'A' || letter == 'E' || letter == 'I' || letter == 'O' || letter == 'U') {
        fill(255, 204, 0);
      } 
      else {
        fill(255);
      }

      text(letter, x, y);

      counter++;
    }
  }
}


//Resources: https://processing.org/reference/text_.html
