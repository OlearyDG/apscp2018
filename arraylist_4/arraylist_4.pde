import java.util.Arrays;

void setup() {
  ListOddToEven s = new ListOddToEven();

  System.out.println( s.go( Arrays.asList(7, 1, 5, 3, 11, 5, 6, 7, 8, 9, 10, 12345, 11) ) );
  System.out.println( s.go( Arrays.asList(11, 9, 8, 7, 6, 5, 4, 3, 2, 1, - 99, 7)));
  System.out.println( s.go( Arrays.asList(10, 20, 30, 40, 5, 41, 31, 20, 11, 7)));
  System.out.println( s.go( Arrays.asList(32767, 70, 4, 5, 6, 7)));
  System.out.println( s.go( Arrays.asList(255, 255)));
  System.out.println( s.go( Arrays.asList(2, 7, 11, 21, 5, 7)));
  System.out.println( s.go( Arrays.asList(7, 255, 11, 255, 100, 3, 2)));
  System.out.println( s.go( Arrays.asList(9, 11, 11, 11, 7, 1000, 3)));
  System.out.println( s.go( Arrays.asList(7, 7, 7, 11, 2, 7, 7, 11, 11, 2)));
  System.out.println( s.go( Arrays.asList(2, 4, 6, 8, 8)));

}
//////////////////////////////////////////////////////////////////////////////////
import java.util.ArrayList;
import java.util.List;

public class ListOddToEven {
  public int go( List<Integer> ray ) {
int o=-1;
int e=-1;
int d=0;
int g=-1;
for(int i=0;i<ray.size();i++){
if(ray.get(i)%2==1){
o=i;
break;
}
}
if(o==-1)
return -1;
for(int i=ray.size()-1;i>o;i--){
if(ray.get(i)%2==0){
e=i;
break;
}
}
if(e==-1)
return -1;
   return e-o;
}
}
//expected output:
//10
//8
//3
//4
//- 1
//6
//5
//9
//- 1
