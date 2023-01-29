package noname;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
//import java.util.Comparator;
//import noname.Comparator;
public interface Comparator {
	
	
	public static void main(String[] args) {
		List<Integer> numbers = Arrays.asList(1, -8, 4, 2);
		Collections.sort(
			    numbers,
			    new Comparator<Integer>() {
			      @Override
			      public int compare(Integer x, Integer y) {
			        // 数値が小さい順に並べる
			        return Integer.compare(x, y);
			      }
			    });

			System.out.println(numbers);
	}
	
}