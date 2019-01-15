public class Santa{
  int swidth=750;
  int sheight=500;
  int l=-15,r=15;
public Santa(){
}
/*
void keyPressed(){
  if(keyPressed==true){
if(key=='a'||key=='A'){
swidth+=l;
if(swidth<=-100){
swidth=1400;  
}
}
if(key=='d'||key=='D'){
swidth+=r;
if(swidth>=1499){
swidth=0;  
}
}
if(key=='w'||key=='W'){
sheight+=l;
if(sheight<=-100){
sheight=1000;  
}
}
if(key=='s'||key=='S'){
sheight+=r;
if(sheight>=1000){
sheight=-100;  
}
}
  }
}
*/
public int getX(){
return mouseX;
}
public int getY(){
return mouseY;
}

   public void display(){

      image(img, mouseX,mouseY,100,100);
   }
}
