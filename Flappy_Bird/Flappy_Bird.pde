import ddf.minim.*;
Minim minim;  
AudioSample sound; 
PrintWriter output;
String highScore ="0";
float x = 200;
float y = 200;
float x2 = 400;
float y2 = 400;
float y3 = 200;
float h = 200;
float birdYVelocity = 0;
float gravity = 0.9;
float xd = 300;
float h2;
float PipeHeight;
float gap = random(100, 300);
int score = 6;
int hscore = 0;
//1. Start a new sketch with draw and setup methods.
void setup() {
  minim = new Minim (this);
  sound = minim.loadSample("flap.wav", 128);
  readHighScore();
  size(1000, 600);

  
}

//2. Set your canvas size in the setup method
void draw() {
  background(0, 0, 255);
  fill(255, 0, 0);
  ellipse(x, y, 40, 40);
  fill(0, 255, 0);
  x2=x2-11;
  birdYVelocity += gravity;
  y += birdYVelocity;
  fill(0, 255, 0);
  //rect(x2, 0, 200, 100);
  rect(x2, 0, 200, PipeHeight);
  fill(0, 255, 0);
  rect(x2, PipeHeight + (gap*1.5), 200, height - (PipeHeight + gap));
  text("Score:" + score, 200, 200);
  text("High Score:" + highScore, 0, 100);
  textSize(20);
  if (mousePressed) {
    birdYVelocity = -15;
  }
  if (x2 < -300) {
    x2 = 900;
    PipeHeight = random(50, 200);
    y2 = PipeHeight;
    gap = random(100, 300);
    sound.trigger();
    score++;
  }
  if (y > 600 || y < 0) {
    System.exit(0);
  }

  if (x > x2 && x < x2 + 200 && y > PipeHeight + (gap*1.5)) {
    println("Game over! Your score was: " + score);
    int hscore = Integer.parseInt(highScore);
    if (score > hscore) {
      writeHighScore(hscore);
    }
    System.exit(0);
  } else if (x > x2 && x < x2 + 200 && y < PipeHeight) {
    println("Game over! Your score was: " + score);
    System.exit(0);
  }
}

void readHighScore() {
  // Open the file from the createWriter() example
  BufferedReader reader = createReader("score.txt");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      highScore = line;
      println("reading score "+ line);
    }
    reader.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }
} 

void writeHighScore(int myscore) {
  output = createWriter("score.txt");
  output.println(myscore);
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program
}