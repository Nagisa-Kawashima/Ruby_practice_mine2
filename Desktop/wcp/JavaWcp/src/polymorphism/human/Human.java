package polymorphism.human;

public class Human {
	private String name;
//	private は「自クラスからのアクセスしか許さない」
	protected int age;
//	protected は「他ファイル・他クラスからのアクセスをプロテクトする
	
	public Human(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	final public String getName() {
		return this.name;
	}
	
	public int getAge() {
		return this.age;
	}
	
	public String getProfile() {
		return "名前は" + this.name + "。年齢は" + this.age + "です。";
	}
}
