class Other{
  int score = 0;
  int life = 3;
  
  
  void Score(){
    
    fill(0);
    subfont = loadFont("ComicSansMS-48.vlw");
    textAlign(CENTER);
    textSize(24);
    text(score, 40, 40);
    
  }
  
  void Life(){
    int l[] = {0, 0, 0, 0, 0, 0};
    textSize(12);
    textAlign(CENTER);
    text("Life", 1050, 20);
    
    fill(255, l[0], l[1]);
    ellipse(1100, 20, 20, 20);
    fill(255, l[2], l[3]);
    ellipse(1140, 20, 20, 20);
    fill(255, l[4], l[5]);
    ellipse(1180, 20, 20, 20);
    Score();
  }
  
}
