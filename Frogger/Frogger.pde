import static javax.swing.JOptionPane.*;
Car car = new Car(70, 70, 70, 15);
Car car2 = new Car(70, 300, 70, 10);
Car car3 = new Car(70, 600, 70, 5);
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
    fill(0, 0, 255);
    rect(cx, cy, 50, 50);
  }
  void speed() {
    cx-=cspeed;
    if (cx < 30) {
      cx = 770;
      cspeed = cspeed * -1;
    }
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
  //println("X: " + x + " Y: " + y);
  restraint();
  car.display();
  car.speed();
  car2.display();
  car2.speed();
  car3.display();
  car3.speed();

  if (intersects(car) ||intersects(car2)  || intersects(car3) == true) {
    textSize(30);
    //text("Game Over!", 400, 100);
    showMessageDialog(null, "You Lost!"); 
    System.exit(0);
  }
  if (y <= 50) {
    showMessageDialog(null, "You Won!");
    System.exit(0);
  }
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == UP)
    {
      y-=50;
    } else if (keyCode == DOWN)
    {
      y+=50;
    } else if (keyCode == RIGHT)
    {
      x+=50;
    } else if (keyCode == LEFT)
    {
      x-=50;
    }
  }
}
void restraint() {
  if (x > 750) {
    x = 750;
  }
  if (x < 50) {
    x = 50;
  }
  if (y > 750) {
    y = 750;
  }
  if (y < 50) {
    y = 50;
  }
}



boolean intersects(Car car) {
  if (y +50> car.cy && y < car.cy+70 && (x > car.cx && x < car.cx+70))
  {
    return true;
  } else 
  {
    return false;
  }
}