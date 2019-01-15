public class EvilSnowman{
int smwidth=500;//750
  int smheight=250;//0
  int l=-15,r=15;
public EvilSnowman(){
}

float x = (float)Math.random()*width;
  float y = -50;
 float speed=(float)(Math.random()*10)+1;
  float xSpeed=(float)(Math.random()*2)+1;
  float o = (float)Math.random();
public void neg(){
if(o>.5)
xSpeed*=-1;
}
public void display(){
 image(esm, x, y,100,100);
      y+=speed;
      //x+=xSpeed;
if(y>1500){
 lives--;
  y=-50;
  x=(float)(Math.random()*1300)+1;
}
for(int i=0;i<=100;i++){
if(santa.getX()+i>=x&&santa.getX()+i<=x+100){
if(santa.getY()+i>=y&&santa.getY()+i<=y+100){

  point++;
y=-50;
  x=(float)(Math.random()*1500)+1;
image(esm, x, y,100,100);
}
}
}
  }
}
