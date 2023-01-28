package noname;
import java.util.Arrays;
import java.util.List;

public interface InterfaceTest {
	 public String method(String name, int n);

//public class Main {
	 
    public static void main(String[] args) {
 
//        // ラムダ式の場合
//        InterfaceTest it = (name, n) -> {
//            return "Hello " + name + n + "!";
//        };
//        System.out.println(it.method("Java", 8));
//        
//        Integer[] num = {1, 2, 3, 4, 5};
//        List<Integer> l = Arrays.asList(num);
// 
//        // ラムダ式の記述
//        l.forEach(System.out::println);
// 
//        /*        
//        // for文での記述
//        for(int i = 0; i < l.size(); i++) {
//            System.out.println(l.get(i));
//        }
//        */
//        
//       
// 
//        // ラムダ式の記述：3未満を抽出
//        l.stream().filter(x -> x < 3).forEach(System.out::println);
    	
//    	Integer[] num = {1, 3, 5, 4, 2};
    	Integer[] num = {1, 2, 3, 4, 5};
    	List<Integer> l = Arrays.asList(num);
    	 
        // ラムダ式の記述：降順にソート
//        l.stream().sorted((x, y) -> y - x).forEach(System.out::println);
    	 l.stream().map(x -> x * 10 - 5).forEach(System.out::println);
    }
 
}