Ball ball;
Enemy enemy;
Other other;
National_flag national_flag;
//あとで０にしてね。
int gamestartflg = 0;
PFont titlefont,subfont;




void setup() {
  size(1200, 700);
  smooth();
  colorMode(RGB);
  fill(0);


  ball = new Ball(600, 450, 30, 0.25, 150);
  enemy = new Enemy(40, 40, 50, 3, 3, 0);
  national_flag = new National_flag();
  other = new Other();
}

void draw() {

  background(255);
  ball.titleball1();
  ball.titleball2();
  enemy.Enemylevel1();
  other.Life();
}


void keyPressed() {
  if (gamestartflg==0) {
    return;
  } else {
    if (key=='j') {
      ball.Right();
    }
    if (key=='f') {
      ball.Left();
    }
  }
}

