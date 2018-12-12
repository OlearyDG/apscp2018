void setup() {
  Box1 box=new Box1(5);
  println(box);
  box.setSize(2);
  println(box);
}
public class Box1 {
  int size;

  public Box1(int size) {
    setSize(size);
  }
  public void setSize(int size) {
    this.size=size;
  }
  public String toString() {
     String output="";
  
  for(int i=1;i<=size;i++){
    for(int j=1;j<=size-i; j++){
      output+="*";
    }
    for(int h=1;h<=i;h++){
      output+="#";

    }
  output+="\n";

  }
  
  
  
    return output+"\n";
  }
}
