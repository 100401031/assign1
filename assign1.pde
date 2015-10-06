/* please implement your assign1 code in this file. */

int x, y;
int shipX, shipY;
float HP;
int treasureX,treasureY;// position of treasure
int enemyX, enemyY;//position of enemy
int bgX;//position of background
PImage shipImg, bgImg1, bgImg2, hpImg,enemyImg, treasureImg;

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  
  x = 640;
  y = 480;
  shipX = x;
  shipY = y/2;
  HP = random(0, 122);
  treasureX = floor(random(0,641));
  treasureY = floor(random(0,481));
  enemyX = 0;
  enemyY = 50;
  shipImg = loadImage("img/ship.png");
  bgImg1 = loadImage("img/bg1.png");
  bgImg2 = loadImage("img/bg2.png");
  hpImg = loadImage("img/hp.png");
  enemyImg = loadImage("img/enemy.png");
  treasureImg = loadImage("img/treasure.png");

}

void draw() {
  // your code
  
  
  //background
  imageMode(CORNER);
  bgX += 1;
  bgX %= 1280;
  image(bgImg1,bgX, 0);//fisrt bakground
  image(bgImg2,-640+bgX, 0);//second background
  image(bgImg1,-1280+bgX, 0);//third background

  //ship
  imageMode(CENTER);
  image(shipImg, shipX-30, shipY);


  //enemy
  enemyX += 5;
  enemyX %= 640;
  image(enemyImg, enemyX, enemyY);
  image(treasureImg, treasureX, treasureY);

  //HP
  rectMode(CORNER);
  fill(#FF0000);
  rect(20, 15,HP, 31, 20);
  image(hpImg, 120, 30);
  
}
