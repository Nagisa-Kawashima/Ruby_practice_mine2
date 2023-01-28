package map;

import java.util.HashMap;
//import java.util.Map;
import java.util.TreeMap;

public class Map {
	public static void main(String[] args) {
		HashMap<Integer, String> map1 = new HashMap<Integer, String>();
		// 要素を追加する
		map1.put(0, "ぶどう");
		map1.put(3, "もも");

		// 登録済みのキーで追加すると上書きされる
		map1.put(0, "マスカット");
		System.out.println(map1);

		// 要素を取得する
		System.out.println(map1.get(0)); // マスカットを返す
		System.out.println(map1.get(1));// nullを返す
		System.out.println(map1.containsKey(0));
		System.out.println(map1.containsValue("ぶどう"));
		System.out.println(map1.size());

		map1.remove(0);
		map1.remove(3, "もも");
		System.out.println(map1);
		// TreeMapを生成する場合
		TreeMap<String, String> map2 = new TreeMap<String, String>();
		
		HashMap<Integer, String> classmates = new HashMap<>();
		classmates.put(1, "青木");
		classmates.put(2, "石坂");
		classmates.put(3, "小野田");
		
		for (Integer key : classmates.keySet()) {
			System.out.println(key);
		}
		
		for (String name : classmates.values()) {
			System.out.println(name);
		}
		for (HashMap.Entry<Integer, String> classmate : classmates.entrySet()) {
			System.out.println(classmate.getKey() + "番は" + classmate.getValue() + "さん");
		}
	}
}
