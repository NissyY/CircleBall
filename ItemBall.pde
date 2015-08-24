//国旗 = アイテム

class ItemBall {
  PImage japanimg;
  float japanflagx = 80, japanflagy = 40, dx = 3, dy = 3;
  int barrierflg = 0;//シールドがonかoffか
  private float itemdis1, itemdis2;//国旗とプレーヤーとの距離
  int itemflg = 0;//どのアイテムの効果を得ているか
  //itemflg
  private float itemx, itemy, r;

  ItemBall(float x, float y, float R) {

    itemx = x;//itemのx座標
    itemy = y;//itemのy座標
    r = R;//item半径
  }



  void Japanflag() {
    //タイトル、ゲームオーバー時、アイテム効果有時 表示しない

    if (gamecontrolflg==0 || other.touchflg == 3 || itemflg == 1) {
      return;
    }
    imageMode(CENTER);
    japanimg = loadImage("Japan.jpg");
    image(japanimg, japanflagx, japanflagy, 40, 40);
    itemeffect();
  }

  //国旗の移動 敵のレベル１と同様ただ跳ね返る

  void Move_itemball() {
    japanflagx = japanflagx + dx;
    japanflagy = japanflagy + dy;

    if (japanflagx<20||width-20<japanflagx) {
      dx = -dx;
    }
    if (japanflagy<20||height-20<japanflagy) {
      dy = -dy;
    }
  }

  void itemeffect() {

    PVector fingerPos = leap.getTip(leap.getFinger(0));
    itemdis1 = dist(fingerPos.x, fingerPos.y, japanflagx, japanflagy);

    PVector fingerPos1 = leap.getTip(leap.getFinger(4));
    itemdis2 = dist(fingerPos1.x, fingerPos1.y, japanflagx, japanflagy);

    //    itemdis1 = dist(redball.ballx + 600, redball.bally + 350, japanflagx, japanflagy);
    //    itemdis2 = dist(blueball.ballx + 600, blueball.bally + 350, japanflagx, japanflagy);
    if (itemdis1 < 40 || itemdis2 < 40) {
      itemflg = 1;//日本の国旗をゲットしたらバリア展開（1回だけ敵に当たっても防ぐ）
    }
  }
}

