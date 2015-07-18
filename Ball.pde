class Ball {
  float ballx, bally, r, theta;
  int O;

  Ball(float x, float y, float R, float t, int o) {
    ballx = x;
    bally = y;
    r = R;
    theta = t;
    O = o;
  }

  void titleball1() {
    noStroke();
    fill(255, 0, 0);
    ellipse(ballx + 600, bally + 450, r, r);
    theta -= 0.05;
    ballx = O * cos(theta);
    bally = O * sin(theta);
    
  }
  void titleball2() {
    noStroke();
    fill(0, 0, 255);
    ellipse(ballx + 600, bally + 450, r, r);
    ballx = O * -cos(theta);
    bally = O * -sin(theta);
  }

  void Right() {
    theta += 0.25;
  }
  void Left() {
    theta -= 0.25;
  }
}

