import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
PImage img;
SnowFlake snowFlake;
Santa santa=new Santa();
SnowFlake[]mySnow=new SnowFlake[10];
final int WIDTH = 1500, HEIGHT = 1000;
void setup(){
  size(1500, 1000);
   snowFlake = new SnowFlake();
  img = loadImage("santa.png");
  for(int i=0; i<mySnow.length; i++){
    mySnow[i]=new SnowFlake();
  }
}
void keyPressed() {
System.out.println("TEST");
}
void draw(){
 
  background(0);
santa.display();
 snowFlake.display();
  for(int i=0; i<mySnow.length; i++){
    mySnow[i].display();
  }
text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
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

public class Santa{
  int swidth=750;
  int sheight=500;
  int l=-15,r=15;
public Santa(){
}

   public void display(){

      image(img, swidth,sheight,100,100);
   }
}
