package list;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


public class LIst {
	public static void main(String[] args) {
		List<String> list1 = new ArrayList<String>();
		list1.add("りんご");
		list1.add("みかん");
		// 位置を指定して要素を追加する
		list1.add(1, "バナナ");
		// コレクションの要素数より大きい位置を指定すると実行時エラー
//		list1.add(5, "ドリアン");

		System.out.println(list1);

		System.out.println(list1.get(0));

		System.out.println(list1.contains("バナナ"));
		System.out.println(list1.contains("なし"));

		System.out.println(list1.remove("バナナ"));
		list1.remove("なし");

		list1.remove(1);

		System.out.println(list1);

		System.out.println(list1.size());
		
		List<Integer> list2 = new LinkedList<Integer>();
		
		
		// Listの例
		List<String> prefectures = new ArrayList<>();
		prefectures.add("北海道");
		prefectures.add("青森県");
		prefectures.add("秋田県");

		for (String prefecture : prefectures) {
		  System.out.println(prefecture); // 北海道、青森県、秋田県の順に表示
		}

	}
}
