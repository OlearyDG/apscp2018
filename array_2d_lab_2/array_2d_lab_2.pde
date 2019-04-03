void setup(){
    int numRows = 3, numCols = 4;

    // 1
    int[][] mat = new int[][] { { 10, 9, 8, 7 }, { 6, 5, 4, 3 }, { 2, 1, -1, 0 } };
    // expected output{ { 10, 9, 8, 7 }, { 2, 1, -1, 0 }, { 6, 5, 4, 3 } };

    // 2
    int[][] mat2 = new int[][] { { 10, 9, 8, 7 }, { 6, 5, 4, 3 }, { 2, 1, -1, 0 } };
    // expected output{ 10, 7, 8, 9 }, { 6, 3, 4, 5 }, { 2, 0, -1, 1 } };

    // 3
    String phrase = "Rosemount High";
    // expected output{ { "R", "o", "s", "e" }, { "m", "o", "u", "n" }, { "t", " ",
    // "H", "i" } };

    // 4
    int[] fillColMajor = new int[] { 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, -1 };
    // expected output{ { 10, 7, 4, 1 }, { 9, 6, 3, 0 }, { 8, 5, 2, -1 } };

    // 5
    int[] vals = new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 };
    // expected output{ { 1, 6, 7, 12 }, { 2, 5, 8, 11 }, { 3, 4, 9, 10 } };

    TwoDLab2 test = new TwoDLab2();

    // 1
    //test.printInt(mat);
    test.rowSwap(mat, 1, 2);
    System.out.println("one");
    test.printInt(mat);

    // 2
    test.colSwap(mat2, 1, 3);
    System.out.println("two");
    test.printInt(mat2);

    // 3
    String[][] three = test.fillRowMajor(phrase, numRows, numCols);
    System.out.println("three");
    test.printString(three);

    // 4
    int[][] four = test.fillColumnMajor(fillColMajor, numRows, numCols);
    System.out.println("four");
    test.printInt(four);

    // 5
    int[][] five = test.fillDownUp(vals, numRows, numCols);
    System.out.println("five");
    test.printInt(five);
  }




public class TwoDLab2 {

  public TwoDLab2() {

  }

  // 1. Swapping 2 rows in a 2D array – This can be done both with and without
  // traversing the rows.
  public void rowSwap(int[][] mat, int rowAIndex, int rowBIndex) {
int temp=0;
    for(int i=0;i<mat[rowAIndex].length;i++){
   temp=mat[rowAIndex][i];
   mat[rowAIndex][i]=mat[rowBIndex][i];
   mat[rowBIndex][i]=temp;
    }
    
  }

  // 2. Swapping 2 columns in a 2D array – The columns must be traversed.
  public void colSwap(int[][] mat, int colAIndex, int colBIndex) { 
    int temp=0;
    for(int i=0;i<mat.length;i++){
   temp=mat[i][colAIndex];
   mat[i][colAIndex]=mat[i][colBIndex];
   mat[i][colBIndex]=temp;
    }
    
  }

  // 3. Fill a 2D array in row-major order from a 1D data structure, in this
  // case a string
  public String[][] fillRowMajor(String str, int rows, int cols) {
    String[][] mat = new String[rows][cols];
    int c=0;
for(int i=0;i<mat.length;i++){
for(int j=0;j<mat[i].length;j++){
mat[i][j]=""+str.charAt(c);
c++;
}
  
}
        return mat;
  }

  // 4. Fill a 2D array in column-major order from a 1D data structure, in this
  // case a 1D array
  public int[][] fillColumnMajor(int[] vals, int rows, int cols) {
    int[][] mat = new int[rows][cols];
        int c=0;
for(int i=0;i<mat[0].length;i++){
for(int j=0;j<mat.length;j++){
mat[j][i]=vals[c];
c++;
}
  
}
    
    
    return mat;
  }

  // 5. Fill a 2D array from the bottom up (see description) from a 1D data
  // structure
  public int[][] fillDownUp(int[] vals, int rows, int cols) {
int[][] mat = new int[rows][cols];
    
    
    
return mat;
  }

  //// print methods
  public void printString(String[][] arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr[i].length; j++) {
        System.out.print(arr[i][j] + " ");
      }
      System.out.println();
    }
    System.out.println();
  }

  public void printInt(int[][] arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr[i].length; j++) {
        System.out.print(arr[i][j] + " ");
      }
      System.out.println();
    }
    System.out.println();
  }

}
