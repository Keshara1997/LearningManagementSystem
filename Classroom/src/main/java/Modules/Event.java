package Modules;

public class Event {
	private int eventId;
	private String name;
	private String category;
	private double lname;
	private String description;
	
	
	
	public Event() {
	}

	public Event(int eventId, String name, String category, double lname, String description) {
		super();
		this.eventId = eventId;
		this.name = name;
		this.category = category;
		this.lname = lname;
		this.description = description;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getlname() {
		return lname;
	}

	public void setlname(double price) {
		this.lname = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
