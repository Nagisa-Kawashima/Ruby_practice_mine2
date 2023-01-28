package api;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

class Apple extends Fruit {
	List<Fruit> fruits = new ArrayList<>();
	List<Apple> apples = new ArrayList<>();
	
	Apple(String name, BigDecimal price) {
		super(name, price);
	}
	@Override
	protected String getName() {
		return name;
	}
	@Override
	protected BigDecimal getPrice() {
		return price;
	}
}
