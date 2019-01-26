import java.util.Arrays;

void setup() {
  ListAverage s = new ListAverage();

  System.out.println( s.go( Arrays.asList(-99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12345) ) );
  System.out.println( s.go( Arrays.asList(10, 9, 8, 7, 6, 5, 4, 3, 2, 1, -99)));
  System.out.println( s.go( Arrays.asList(10, 20, 30, 40, 50, -11818, 40, 30, 20, 10)));
  System.out.println( s.go( Arrays.asList(32767)));
  System.out.println( s.go( Arrays.asList(255, 255)));
  System.out.println( s.go( Arrays.asList(9, 10, -88, 100, -555, 1000)));
  System.out.println( s.go( Arrays.asList(10, 10, 10, 11, 456)));
  System.out.println( s.go( Arrays.asList(-111, 1, 2, 3, 9, 11, 20, 30)));
  System.out.println( s.go( Arrays.asList(9, 8, 7, 6, 5, 4, 3, 2, 0, -2, -989)));
  System.out.println( s.go( Arrays.asList(12, 15, 18, 21, 23, 1000)));
  System.out.println( s.go( Arrays.asList(250, 19, 17, 15, 13, 11, 10, 9, 6, 3, 2, 1, -455)));  
  System.out.println( s.go( Arrays.asList(9, 10, -8, 10000, -5000, 1000)));
}
//////////////////////////////////////////////////////////////////////////////////
import java.util.ArrayList;
import java.util.List;

public class ListAverage {
  public double go( List<Integer> ray) {
double s=ray.get(0);
double b=ray.get(0);
for(int i=0;i<ray.size();i++){
if(b<ray.get(i))
b=ray.get(i);
}
for(int i=0;i<ray.size();i++){
if(s>ray.get(i))
s=ray.get(i);
}
    return (b+s)/2;
  }
}

//expected output:
//6123.0
//- 44.5
//- 5884.0
//32767.0
//255.0
//222.5
//233.0
//- 40.5
//- 490.0
//506.0
//- 102.5
//2500.0
