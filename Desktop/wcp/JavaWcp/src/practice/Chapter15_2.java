package practice;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.FileSystem;
import java.nio.file.FileSystems;
import java.nio.file.Path;

public class Chapter15_2_java6 {
    public static void main(String[] args) {
        FileSystem fs = FileSystems.getDefault();
        Path inputPath = fs.getPath("resouces/input.txt");
        Path outputPath = fs.getPath("resouces/output.txt");

        // finally文で使用するので、try文の外で変数を宣言する必要がある
        BufferedReader reader = null;
        BufferedWriter writer = null;

        // 「try-catch-finally」文で処理
        try {
            // Filesクラスを使用しない場合は、コードがわかりづらい
            reader = new BufferedReader(new FileReader(inputPath.toFile()));
            writer = new BufferedWriter(new FileWriter(outputPath.toFile()));

            // BufferedReader.readLineメソッドを使用して、1行づつ処理
            // 読み込む行がなくなるまでループ
            String line = null;
            while ((line = reader.readLine()) != null) {
                // 文字数が5以外の場合は、出力しない
                if (line.length() != 5) {
                    continue;
                }
                // 読み込んだ1行を出力
                writer.write(line);
                // 改行がついてないので改行を出力
                writer.newLine();
            }
        // 例外処理を記述
        // printStackTraceで例外を出力
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            // リソースをcloseする必要がある
            // reader変数がnullの場合、NullPointerExceptionが発生するので、nullじゃない場合だけ処理
            if (reader != null) {
                try {
                    // closeメソッドも例外が発生するのでさらに例外処理を記述する必要がある
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            //  reader変数と同様にクローズ処理を記述する必要がある
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            System.out.println("出力処理終了");
        }
    }
}