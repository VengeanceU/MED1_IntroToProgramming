Flower myFlower1;  // the first instance of the Flower class
Flower myFlower2;
Flower myFlower3;
Flower myFlower4;
int _r1= 60;
int _petals=7;
float _x=width/2;
float _y=height/2;
int _pc=#FFA000;
float offset = 500;
float xspeed = random(-10, 10);
float yspeed = random(-10, 10);
void setup() {
  size(1600, 1000);
  background(#43AF76);
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  myFlower1 = new Flower(_r1, _petals+2, _x, _y, _pc);
  myFlower2 = new Flower(_r1, _petals, _x-offset, _y, _pc);
  myFlower3 = new Flower(_r1, _petals+20, _x+offset, _y, _pc);
  myFlower4 = new Flower(_r1-10, _petals+7, _x+offset, _y, _pc);

  //  myFlower2 = new Flower();
  //   myFlower3 = new Flower();
}

void draw() {
  background(#43AF76);
  myFlower1.display();
  myFlower2.display();
  myFlower3.display();
  myFlower4.display();
  myFlower1.move();
  myFlower2.move();
  myFlower3.move();
  myFlower4.mouse();
  myFlower1.boundries();
  myFlower2.boundries();
  myFlower3.boundries();
  myFlower1.collition(myFlower2);
  myFlower1.collition(myFlower3);
  myFlower2.collition(myFlower1);
  myFlower2.collition(myFlower3);
  myFlower3.collition(myFlower2);
  myFlower3.collition(myFlower1);
}
