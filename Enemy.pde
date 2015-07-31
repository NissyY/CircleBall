class Enemy {
  float enemyx, enemyy, r, dx, dy, dball; 
  Enemy(float addx, float addy, float addr, float adddx, float adddy, float addd) {
    enemyx = addx;
    enemyy = addy;
    r = addr;
    dx = adddx;
    dy = adddy;
    dball = addd;
  }


  void Enemylevel1() {
    fill(0);
    ellipse(enemyx, enemyy, r, r);

    enemyx = enemyx + dx;
    enemyy = enemyy + dy;

    if (enemyx<30) {
      dx = random(3, 8);
      other.score++;
    }
    if(enemyx>1170){
      dx = -random(3, 8);
      other.score++;
    }
    if (enemyy<30) {
      dy = random(3, 8);
      other.score++;
    }
    if(enemyy>670){
      dy = -random(3, 8);
      other.score++;
    }
  }
  
  void Enemylevel2() {
    for (int i = 0; i <= 4; i++) {
      enemy[i].r = enemy[i].r + dball;
    }
    if (r <= 30) {
      dball = -dball;
    }
    if (r >= 50) {
      dball = -dball;
    }
    
  }
}

