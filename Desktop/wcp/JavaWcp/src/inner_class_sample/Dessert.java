package inner_class_sample;

public enum Dessert {
//	APPLE, ICE_CREAM, CAKE,ORANGE
//	APPLE(100), ICE_CREAM(200), CAKE(300),;
//	
//	private int price;
//	
//	private Dessert(int price) {
//		this.price = price;
//	}
//	 
//	public int getPrice() {
//		return price;
//	}
	
	APPLE(100) {
		@Override 
		void advertise() {
			System.out.println("真っ赤なりんごが" + getPrice() + "円");
		}
	},
	ICE_CREAM(200) {
		@Override
		void advertise() {
			System.out.println("夏にぴったりのアイスクリームが" + getPrice() + "円");
		}
	},
	CAKE(300) {
		@Override
		void advertise() {
			System.out.println("みんな大好き甘いケーキが" + getPrice() + "円");
		}
	},
	;
	
	private int price;
	
	private Dessert(int price) {
		this.price = price;
	}
	
	public int getPrice() {
		return price;
	}
	 // 宣伝文句を出力する抽象メソッド。各インスタンスで実装する
	abstract void advertise();
	 
}

