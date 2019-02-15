class Shihtzu implements Animal{
private String namey;
private String bigSound;

public Shihtzu(String n, String s){
namey=n;
bigSound=s;
}

public String getName(){
return namey;
}

public String getSound(){
return bigSound;
}

public String toString(){
return "Name: "+namey+"Sound: "+bigSound;
}
}
