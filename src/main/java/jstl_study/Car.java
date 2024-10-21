package jstl_study;

public class Car {
// num / name / price
	private String num;
	private String name;
	private int price;
	
	public Car() {}
	public Car(String num, String name, int price) {
		this.num = num;
		this.name = name;
		this.price = price;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Car [num=" + num + ", name=" + name + ", price=" + price + "]";
	}
	
}
