class Ball {
  float ballx, bally, r, theta;
  int O;
  float dis[] = {0, 0, 0, 0, 0, 0};
  int touchflg = 0;
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
    ellipse(ballx + 600, bally + 350, r, r);
    theta -= 0.05;
    ballx = O * cos(theta);
    bally = O * sin(theta);
    titleball2();
  }
  void titleball2() {
    fill(0, 0, 255);
    ellipse(ballx + 600, bally + 350, r, r);
    ballx = O * -cos(theta);
    bally = O * -sin(theta);
  }
  
  void playerball1(){
    fill(255, 0, 0);
    ellipse(ballx + 600, bally + 350, r, r);
    ballx = O * cos(theta);
    bally = O * sin(theta);
    playerball2();
    touch();
  }
  void playerball2(){
    fill(0, 0, 255);
    ellipse(ballx + 600, bally + 350, r, r);
    ballx = O * -cos(theta);
    bally = O * -sin(theta);
    touch();
  }

  void Right() {
    theta += 0.25;
  }
  void Left() {
    theta -= 0.25;
  }
  
  void touch(){
    for(int i = 0; i < enemycount; i++){
      dis[i] = dist(ballx + 600, bally + 350, enemy[i].enemyx, enemy[i].enemyy);
    }
    if(dis[0] < 30 + enemy[0].dball){
      enemy[0].enemyy = 50;
      touchflg++;
    }
    if(dis[1] < 30 + enemy[0].dball){
      enemy[1].enemyy = 50;
      touchflg++;
    }
    if(dis[2] < 30 + enemy[0].dball){
      enemy[2].enemyy = 50;
      touchflg++;
    }
    if(dis[3] < 30 + enemy[0].dball){
      enemy[3].enemyy = 50;
      touchflg++;
    }
    if(dis[4] < 30 + enemy[0].dball){
      enemy[4].enemyy = 50;
      touchflg++;
    }
  }
}

