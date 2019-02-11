import java.util.Scanner;
import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import static java.lang.System.*;

public class ToyStore {
  private ArrayList<Toy> toyList;

  public ToyStore() {
  }

  public void loadToys( String toys ) {
   Scanner chopper = new Scanner(wordList);
    toyList=new ArrayList();
    while (chopper.hasNext()) {
      toyList.add(new Toy(chopper.next()));
  }

  public Toy getThatToy( String nm ) {
Toy t;
for(int i=0;i<toyList.size();i++){
if(toyList.get(i).getName()==nm)
t=toy.get(i);
}
    return t;
  }

  public String getMostFrequentToy() {




    return "";
  }  

  public void sortToysByCount() {
  }  

  public String toString() {




    return toyList;
  }
}
