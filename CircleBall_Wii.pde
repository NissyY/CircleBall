
Ball ball;//タイトルとプレーヤーとなるボール
Enemy[] enemy = new Enemy[5];//敵は最大出現
Other other;//その他の機能
National_flag national_flag;//テーマの国はアイテムとして出現

int gamecontrolflg = 0;//タイトル、プレイ画面、ゲームオーバー画面のコントロール用flg
int enemycount = 1;//敵の数を示す
int level = 1;//レベル表示のための変数
PFont titlefont, subfont;//まだ未使用

void setup() {
  size(1200, 700);
  smooth();
  colorMode(RGB);
  fill(0);

  ball = new Ball(600, 450, 30, 0.25, 150);
  //敵生成 ５体作っておく 出現位置はy座標固定、x座標をランダム
  for (int i = 0; i <= 4; i++) {
    enemy[i] = new Enemy(random(40, 1100), 50, 30, random(3, 5), random(3, 5), 0.25);
  }

  national_flag = new National_flag();
  other = new Other();
}

void draw() {

  //確認用println 最後に消す
  //  println(mouseX, mouseY);

  background(255);
  other.titleframe();//実行時、最初にタイトル画面描画

  if (gamecontrolflg==1) {//クリックしたらボールを自分で動かす。敵を１体出す。
    if (gamecontrolflg != 1) {//クリックしなかったらreturn;
      return;
    }
    //ライフ スコア 自分を描画
    ball.playerball1();
    enemy[0].Enemylevel1();
    other.Life();
  }

  if (gamecontrolflg == 2) {
    other.GameOver();
  }

  //敵のレベルアップ
  other.enemyappear();
}

//j fで左右にボールが回転
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

