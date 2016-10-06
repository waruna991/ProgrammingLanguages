import java.util.*;

class PersonComp implements Comparator<Person>{
	public int compare(Person p1, Person p2){
		return (p1.lastName + p1.firstName).compareTo(p2.lastName + p2.firstName);
	}
}

public class Person {
	int id;
	String lastName, firstName;
	Date birth;
	
	public Person(int id, String last, String first, Date dob){
		this.id = id;
		this.lastName = last;
		this.firstName = first;
		this.birth = dob;
	}
	
	public static void main(String[] main){
		Person p1 = new Person(1,"a","a",new Date());
		Person p2 = new Person(2,"b","b",new Date());
		List<Person> persons = new ArrayList<Person>();
		persons.add(p2);
		persons.add(p1);
		
		System.out.println(persons);
		Collections.sort(persons, new PersonComp());
		System.out.println(persons);
		
	}
	
	public String toString(){
		return this.id + "";
	}
	
}
