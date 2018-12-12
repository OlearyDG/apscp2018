void setup() {
  TriangleTwo tri=new TriangleTwo("A", 3);
  println(tri);
  tri.setTriangle("X", 7);
  println(tri);
    tri.setTriangle("J", 86);
  println(tri);
}
public class TriangleTwo {
  String let;
  int size;

  TriangleTwo(String let, int size) {
    this.let=let;
    this.size=size;
  }
  void setTriangle(String let, int size) {
    this.let=let;
    this.size=size;
  }
  public String toString() {
    String output="";
   
   for(int i=size;i>0;i--){
     for (int j=i;j>0;j--){
       output=output+let;
     }
     output=output+"\n";
   }
   
   
   
    return output;
  }
}
