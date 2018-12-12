void setup() {
  TriangleOne tri=new TriangleOne("A", 5);
  System.out.println(tri);
  tri.setTriangle("B", 2);
  System.out.println(tri);
    tri.setTriangle("Im not calling Mr. Fendrich", 25);
  System.out.println(tri);
}
public class TriangleOne {
  String let;
  int size;
  
  TriangleOne(String let, int size) {
    this.let=let;
    this.size=size;
  }
  void setTriangle(String let, int size) {
    this.let=let;
    this.size=size;
  }
  public String toString() {
    
    String output="";
    for(int i=1; i<=size;i++){
      
      for(int j=1; j<=i;j++)
      output=output+let;
 
  output=output+"\n";
}



    return output;
  }
}
