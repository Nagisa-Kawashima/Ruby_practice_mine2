package map;

import java.util.HashSet; //ランダム
import java.util.LinkedHashSet; //追加した順
//import java.util.Set;

public class Set {
	
	public static void main(String[] args) {
		// HashSetを生成する場合
		HashSet<String> set1 = new HashSet<String>();
		// 要素を追加する
		set1.add("スイカ");
		set1.add("メロン");
		
		System.out.println(set1);
		System.out.println(set1.contains("スイカ"));
		System.out.println(set1.contains("なし"));
		System.out.println(set1.size());
		
		set1.remove("スイカ");
		System.out.println(set1);
		
		// LinkedHashSetを生成する場合
		LinkedHashSet<Integer> set2 = new LinkedHashSet<Integer>();
		set2.add(2);
		set2.add(3);
		System.out.println(set2);
	}
	
}
