package noname;

public interface B {

	public String hello();

	public static void main(String[] args) {
		B b = new B() {
			// helloメソッドを実装
			@Override
			public String hello() {
				return "Hello B!";
			}
		};
		System.out.println(b.hello());
	}

}
