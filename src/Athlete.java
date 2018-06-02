public class Athlete {

     static int count;
     static String location = "New York";
     static String startTime = "9.00am";

     String name;
     int speed;
     int bibNumber;

public Athlete (String name, int speed){
     this.name = name;
     this.speed = speed;
     count++;
     this.bibNumber=count; 
}

public static void main(String[] args) {
     Athlete john = new Athlete("John", 10);
     Athlete sarah = new Athlete("Sarah", 11);
     Athlete bob = new Athlete("Bob", 15);

     System.out.println(john.name + "'s bib number is " + john.bibNumber);
     System.out.println(sarah.name + "'s bib number is " +sarah.bibNumber);
     System.out.println(bob.name + "'s bib number is "+ bob.bibNumber);
     System.out.println("Total number of athletes is "+count);
     location = "San Diego";
     System.out.println(john.name+" is running in "+ john.location);
     john.location = "Chicago";
     System.out.println(sarah.name + " is running in " + sarah.location);
     bob.location = "New York";
     System.out.println(bob.name + " is running in " + bob.location);
}
}