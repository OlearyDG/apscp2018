
void setup() {
  TriangleThree tri=new TriangleThree("A", 3);
  println(tri);
  tri.setTriangle("B", 2);
  println(tri);
}
public class TriangleThree {
  String let;
  int size;

  TriangleThree(String let, int size) {
    this.let=let;
    this.size=size;
  }
  void setTriangle(String let, int size) {
    this.let=let;
    this.size=size;
  }
  public String toString() {
    String output="";
   
   for(int i=0;i<size;i++){
     for(int j=0;j<size-i;j++){
       output+=" ";
     }
     for(int h=0; h<=i;h++){
       output+=let;
     }
     output+="\n";
   }
   
   
   
   
    return output;
  }
}
