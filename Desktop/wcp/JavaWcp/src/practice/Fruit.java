package practice;
import java.util.ArrayList;
import java.util.List;


public class Fruit {
	 // 名前
	  private String name;

	  // 在庫数
	  private int quantity;

	  // 名前と在庫数を引数にしたコンストラクタ
	  public Fruit(String name, int quantity) {
	    this.name = name;
	    this.quantity = quantity;
	  }

	  // 在庫数を増やしたフルーツを返すメソッド
	  public Fruit order(int quantityToAdd) {
	    return new Fruit(this.name, this.quantity + quantityToAdd);
	  }

	  // 出力用にtoStringをオーバーライド
	  @Override
	  public String toString() {
	    return name + ": " + quantity + "個";
	  }

	  public String getName() {
	  return name;
	 }

	 public void setName(String name) {
	  this.name = name;
	 }

	 public int getQuantity() {
	  return quantity;
	 }

	 public void setQuantity(int quantity) {
	  this.quantity = quantity;
	 }
	 public static void main(String[] args) {
		 List<Fruit> fruits = new ArrayList<>();
		 fruits.add(new Fruit("りんご", 7));
		 fruits.add(new Fruit("みかん", 15));
		 fruits.add(new Fruit("いちご", 4));
		 fruits.add(new Fruit("メロン", 8));
		 fruits.add(new Fruit("ぶどう", 20));
//		// 10個以下に絞り込まれたリストを作る
//		 List<Fruit> filtered = new ArrayList<>();
//		 // 拡張for文でfruitsをループ
//		 for (Fruit fruit : fruits) {
//		   // if文で10個以下に絞る
//		   if (fruit.getQuantity() <= 10) {
//		     // 絞り込まれたリストに追加
//		     filtered.add(fruit);
//		   }
//		 }
//		 // 20個ずつ追加する
//		 List<Fruit> ordered = new ArrayList<>();
//		 for (Fruit fruit : filtered) {
//		   ordered.add(fruit.order(20));
//		 }
//		 // 個数が少ない順に並べ替える
//		 ordered.sort(new Comparator<Fruit>() {
//		   @Override
//		   public int compare(Fruit f1, Fruit f2) {
//		     return f1.getQuantity() - f2.getQuantity();
//		   }
//		 });
//
//		 // 絞り込んで並べ替えたリストを拡張for文でループしながら出力する
//		 for (Fruit fruit : ordered) {
//		   // 標準出力
//		   System.out.println(fruit);
//		 }
//		 
		 
		 fruits.stream().filter(f -> f.getQuantity() <= 10).map(f -> f.order(20)).sorted((f1, f2) -> f1.getQuantity() - f2.getQuantity()).forEach(System.out::println);
		 
		 fruits.stream() // Streamを生成
		    .filter(f -> f.getQuantity() <= 10) // 中間操作1: 個数が10個以下のものを抽出
		    .map(f -> f.order(20)) // 中間操作2: 20個ずつ発注
		    .sorted((f1, f2) -> f1.getQuantity() - f2.getQuantity()) // 中間操作3: 個数の少ない順に並び替え
		    .forEach(System.out::println); // 終端操作: 標準出力
	 }
	
}


