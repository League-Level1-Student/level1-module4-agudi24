Car car = new Car(70, 70, 70, 10);
Car car2 = new Car(70, 200, 70, 10);
int x = 400;
int y = 750;
class Car {
  int cx;
  int cy;
  int csize;
  int cspeed;
  Car(int cx, int cy, int csize, int cspeed) {
    this.cx = cx;
    this.cy = cy;
    this.csize = csize;
    this.cspeed = cspeed;
  }
  void display() {
    fill(0, 255, 0);
    rect(cx, cy, 50, 50);
  }
  void lspeed() {
      cx-=cspeed;
    if (cx < 30) {
      cx = 770;
      cspeed = cspeed * -1;
    }
  }
  void rspeed() {
      cx+=cspeed;
    if (cx > 770) {
      cspeed = cspeed * -1;
     
    }
  }
  }

void setup() {
  size(800, 800);
}

void draw() {
  background(83, 253, 106);
  fill(5, 135, 22);
  ellipse(x, y, 50, 50); 
  println("X: " + x + " Y: " + y);
  restraint();
  car.display();
  car.lspeed();
  car2.display();
  car2.rspeed();
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      y-=30;
    } else if (keyCode == DOWN)
    {
      y+=30;
    } else if (keyCode == RIGHT)
    {
      x+=30;
    } else if (keyCode == LEFT)
    {
      x-=30;
    }
  }
}
void restraint() {
  if (x > 770) {
    x = 770;
  }
  if (x < 30) {
    x = 30;
  }
  if (y > 770) {
    y = 770;
  }
  if (y < 30) {
    y = 30;
  }
}