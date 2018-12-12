void setup() {
  TriangleFour tri=new TriangleFour("A", 5);
  println(tri);
  tri.setTriangle("B", 2);
  println(tri);
}
public class TriangleFour {
  String let;
  int size;

  TriangleFour(String let, int size) {
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
     for(int j=0; j<i; j++){
       output+=let;

     }
     output+="\n";
   }
   
   
   
   
   
   
   
   
   
   
   
    return output+"\n";
  }
}
