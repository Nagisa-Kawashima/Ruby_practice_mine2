package practice;

public class Chapter15_3 {
	public static void main(String[] args) {

        int i1 = 123;
        // 暗黙的にキャストされる
        double d1 = i1;
        System.out.println(d1);

        double d2 = 12.345;
        // 明示的にキャストしないとコンパイルエラー
        int i2 = (int) d2;
        System.out.println(i2);

        int i3 = 1;
        int i4 = 2;
        // キャストしないと期待の結果にならない
        double d3 = (double) i3 / i4;
        System.out.println(d3);

        int i5 = 128;
        // 明示的にキャストしないとコンパイルエラー
        byte m1 = (byte) i5;
        System.out.println(m1);
    }
}
//プリミティブ型のキャストについての問題です。キャストする場合は、参照型のダウンキャストと同じように「変数名 = (型) 元の変数名」で変換
