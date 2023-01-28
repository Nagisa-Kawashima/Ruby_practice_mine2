package noname;

@FunctionalInterface
public interface Greeting {
  public String hello();
  public static void sayHello(Greeting g) { // 引数で渡す Greeting の実装によって、sayHelloの挙動も変わる
	  System.out.println(g.hello()); // このような、g.helloを用いた何らかの処理を書く
	}
  
}

