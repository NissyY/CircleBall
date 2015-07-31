class Other {
  int score = 0;
  int life = 3;

  void titleframe() {
    if (gamecontrolflg==1) {
      return;
    }
    ball.titleball1();
    subfont = loadFont("ACaslonPro-Italic-48.vlw");
    textAlign(CENTER);
    textSize(48);
    if (475<mouseX&&mouseX<720&&300<mouseY&&mouseY<360) {
      fill(255, 240, 0);
      text("Circle Ball", width/2, height/2);
      if (mousePressed) {
        gamecontrolflg=1;
      }
    } else {
      fill(0);
      text("Circle Ball", width/2, height/2);
    }
  }

  void Score() {
    fill(0);
    textSize(24);
    text(score, 40, 40);
    text("Level " + level, 600, 40);
  }

  void Life() {
    int l[] = { 
      300, 300, 300
    };
    textSize(12);
    textAlign(CENTER);
    text("Life", 1050, 20);

    fill(255, 0, 0, l[0]);
    ellipse(1100, 20, 20, 20);
    fill(255, 0, 0, l[1]);
    ellipse(1140, 20, 20, 20);
    fill(255, 0, 0, l[2]);
    ellipse(1180, 20, 20, 20);

    if (ball.touchflg==1) {
      l[0] = 0;
    }
    if (ball.touchflg == 2) {
      l[1] = 0;
    }
    if (ball.touchflg == 3) {
      l[2] = 0;
      gamecontrolflg = 2;
    }

    Score();
  }

  void GameOver() {
    if (gamecontrolflg!=2) {
      return;
    }
    if (ball.touchflg==2) {
      background(0);
      gamecontrolflg = 0;
    }
  }
}
