class Enemy{
  float enemyx, enemyy, r, dx, dy, dball; 
  Enemy(float addx, float addy, float addr, float adddx, float adddy, float addd){
    enemyx = addx;
    enemyy = addy;
    r = addr;
    dx = adddx;
    dy = adddy;
    dball = addd;
    
  }
  
  
 void Enemylevel1(){
    fill(0);
    ellipse(enemyx, enemyy, r, r);
    enemyx = enemyx + dx;
    enemyy = enemyy + dy;
    if(enemyx<30||enemyx>1170){
      dx = -dx;
    }
    if(enemyy<30||enemyy>670){
      dy = -dy;
    }
 }
}


