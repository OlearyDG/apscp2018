import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
PImage img;
PImage esm;
PImage lose;
Snowball snowball= new Snowball();
SnowFlake snowFlake;
EvilSnowman evilsnowman;
int d=10;
int sp=0;
int sms=10;
int sma=10;
int kc=0;
int point=0;
int lives=5;
boolean snowmh=false;
Santa santa=new Santa();
SnowFlake[]mySnow=new SnowFlake[50];
EvilSnowman[]snowm=new EvilSnowman[10];
final int WIDTH = 1500, HEIGHT = 1000;
void setup(){
  size(1500, 1000);
   snowFlake = new SnowFlake();
   evilsnowman= new EvilSnowman();
  img = loadImage("santa.png");
  esm = loadImage("evilsnowman.png");
  lose=loadImage("santa-crash.jpg");
  for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }
  for(int i=0; i<snowm.length; i++){
    snowm[i]=new EvilSnowman();
  }
}
void keyPressed() {
  
if(keyPressed==true){
if(key=='1'){
d=10;
sp=2;
sma=5;
}else if(key=='2'){
d=50;
sp=5;
sma=10;
}else if(key=='3'){
d=100;
sp=7;
sma=15;
}
}
}
void draw(){
    background(0);
    if(lives<=-1){
      image(lose, 0,0,1500,1000);
    }
 //santa.keyPressed();
 if(lives>-1){
santa.display();
evilsnowman.display();
snowball.display();  
 snowFlake.display();
  for(int i=0; i<mySnow.length; i++){
    mySnow[i].display();
  }
   for(int i=0; i<snowm.length; i++){
    snowm[i].display();
  }

text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
text( "Points:" +point, 50,100);
text( "Lives:" +lives, 50,125);
}
}
public class SnowFlake{

  float x = (float)Math.random()*width;
  float y = (float)Math.random()*height;
  float r = (float)Math.random()*20;
  float speed=(float)(Math.random()*5)+1;
  float xSpeed=(float)(Math.random()*2)+1;
  int rand = (int)(Math.random()*2)+1;

  public SnowFlake(){
  }

  public void display(){
 fill(255,255,255);
    ellipse(x, y, r, r);
   y+=speed;
       if(rand==1){
    xSpeed*=-1;
}
   x+=xSpeed;
   if(y > height){
     y = 0;
     x = (float)Math.random()*width;
   }
  }
}
