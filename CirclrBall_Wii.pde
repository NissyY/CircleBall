
Ball ball;
Enemy[] enemy = new Enemy[5];
Other other;
National_flag national_flag;

int gamecontrolflg = 0;
int enemycount = 1;
int level = 1;
PFont titlefont, subfont;

void setup() {
  size(1200, 700);
  smooth();
  colorMode(RGB);
  fill(0);

  ball = new Ball(600, 450, 30, 0.25, 150);
  for (int i = 0; i <= 4; i++) {
    enemy[i] = new Enemy(random(40, 1100), 50, 30, random(3, 5), random(3, 5), 0.25);
  }
  national_flag = new National_flag();
  other = new Other();
}

void draw() {


  println(ball.touchflg);

  background(255);
  other.titleframe();
  if (gamecontrolflg==1) {
    ball.playerball1();
    enemy[0].Enemylevel1();
    other.Life();
  }

  //スコアに応じて敵のレベル変化
  if (other.score == 1) {
    level = 2;
    enemycount = 2;
  } else if (other.score == 3) {
    level = 3;
  } else if (other.score == 8) {
    level = 4;
    enemycount = 3;
  } else if (other.score == 15) {
    level = 5;
    enemycount = 5;
  }

  if (other.score>=1) {
    enemy[1].Enemylevel1();
  }
  if (other.score>=3) {
    enemy[0].Enemylevel2();
    enemy[1].Enemylevel2();
  }
  if (other.score>=8) {
    enemy[2].Enemylevel1();
    enemy[2].Enemylevel2();
    national_flag.Japanflag();
    national_flag.Move_National_flag();
  }
  if (other.score>=15) {
    enemy[3].Enemylevel1();
    enemy[3].Enemylevel2();
    enemy[4].Enemylevel1();
    enemy[4].Enemylevel2();
  }
}

void keyPressed() {
  if (gamecontrolflg==0) {
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

