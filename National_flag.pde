class National_flag {
  PImage japanimg;
  float flagx = 40, flagy = 20, dx = 5, dy = 5;


  void Japanflag() {
    if(gamestartflg==0){
      return;
    }
    imageMode(CENTER);
    japanimg = loadImage("Japan.jpg");
    image(japanimg, flagx, flagy, 40, 20);
  }

  void Move_National_flag() {
    flagx = flagx + dx;
    flagy = flagy + dy;

    if (flagx<20||width-20<flagx) {
      dx = -dx;
    }
    if (flagy<20||height-20<flagy) {
      dy = -dy;
    }
  }
}

