void setup() {

  ToyStore sto = new ToyStore();
  System.out.println( sto );
  sto.loadToys("sorry bat sorry sorry sorry train train teddy teddy ball ball" );
  System.out.println( sto );  
  System.out.println( "max == " + sto.getMostFrequentToy() );
}
