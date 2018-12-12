void setup() {
  SumLast s = new SumLast();

 // System.out.println( s.go( new int[]{-99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 5} ) );
  //System.out.println( s.go( new int[]{10, 9, 8, 7, 6, 5, 4, 3, 2, 1, -99} ) );
  //System.out.println( s.go( new int[]{10, 20, 30, 40, 50, -11818, 40, 30, 20, 10} ) );
  //System.out.println( s.go( new int[]{32767} ) );
  //System.out.println( s.go( new int[]{255, 255} ) );
  //System.out.println( s.go( new int[]{9, 10, -88, 100, -555, 2} ) );
  //System.out.println( s.go( new int[]{10, 10, 10, 11, 456} ) );
  //System.out.println( s.go( new int[]{-111, 1, 2, 3, 9, 11, 20, 1} ) );
  //System.out.println( s.go( new int[]{9, 8, 7, 6, 5, 4, 3, 2, 0, -2, 6} ) );
  //System.out.println( s.go( new int[]{12, 15, 18, 21, 23, 1000} ) );
  //System.out.println( s.go( new int[]{250, 19, 17, 15, 13, 11, 10, 9, 6, 3, 2, 1, 0} ) );  
  //System.out.println( s.go( new int[]{9, 10, -8, 10000, -5000, -3000} ) );
}

public class SumLast {

  public int go(int[] ray) {
   int total=0;
   int ifl=0;
   int ifs=0;
   if(ray.length<=1)
   return -1;
   for(int i=0;i<ray.length-1;i++){
     if(ray[i]>ray[ray.length-1])
     total=total+ray[i];
   }
   for(int i=0;i<ray.length-1;i++){
   if(ray[ray.length-1]>ray[i])
     ifl++;
   }
   for(int i=0;i<ray.length-1;i++){
     if(ray[i]==ray[ray.length-1])
     ifs++;
   }
   if(ifl==ray.length-1)
   return -1;
   else if(ifs==ray.length-1)
   return -1;
   else
   return total;
   
   
   
   
   
   
   
   }
}


/*
40
 55
 230
 -1
 -1
 119
 -1
 45
 24
 -1
 356
 10011
 */
