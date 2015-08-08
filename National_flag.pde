//国旗をアイテム化

class National_flag {
  PImage japanimg;
  float flagx = 80, flagy = 40, dx = 1, dy = 1;
  int barrierflg = 0;//シールドがonかoffか
  private float itemdis;//国旗とプレーヤーとの距離
  int itemflg = 0;//どのアイテムの効果を得ているか
  //itemflg
  //日本国旗の場合 1 = バリア
  //国旗の場合
  //国旗の場合



  void Japanflag() {
    if (gamecontrolflg==0 || ball.touchflg == 3) {//タイトル画面ではださない
      return;
    }
    imageMode(CENTER);
    japanimg = loadImage("Japan.jpg");
    image(japanimg, flagx, flagy, 40, 40);
  }

  //国旗の移動 敵のレベル１と同様ただ跳ね返る
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

  void itemeffect() {

    national_flag.itemdis = dist(ball.ballx + 600, ball.bally + 350, flagx, flagy);
    if (itemdis < 50) {
      itemflg = 1;//日本の国旗をゲットしたらバリア展開（1回だけ敵に当たっても防ぐ）
    }
  }
}

