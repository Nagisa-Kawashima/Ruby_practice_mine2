package api;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public class Api {

	public static void main(String[] args) {
		
		Set<Integer> set = new LinkedHashSet<>();
		set.add(1);
		System.out.println(set);
		
		Map<Integer, String> map = new HashMap<>();
		map.put(1, "Taro");
		map.put(2, "Hanako");
		System.out.println(map);
		
	}
}
