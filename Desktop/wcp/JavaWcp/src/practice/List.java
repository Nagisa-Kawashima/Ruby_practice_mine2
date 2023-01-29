package practice;
import java.time.LocalDate;
//import java.util.List;

public class List implements Comparable<List>{
	private LocalDate date;
	  private String list;
	  private boolean done; //追加
	  public List(LocalDate date, String list, boolean done) {
	    this.date = date;
	    this.list = list;
	    this.done = done;
	    
	  }
	  
	  
	  


public LocalDate getDate() {
    return date;
  }

  public String getList() {
    return list;
  }

  // boolean型のgetterメソッドはis～とする事もあります
  public boolean isDone() {
    return done;
  }

  // compareToメソッドをオーバーライドする
  // 日付で並び替えるため、LocalDateのcompareToを使う
  @Override
  public int compareTo(List t) {
    return date.compareTo(t.date);
  }

  @Override
  public String toString() {
    return date + ":" + list + ":" + done + "]";
  }





public void add(List list2) {
	// TODO 自動生成されたメソッド・スタブ
	
}





public Object stream() {
	// TODO 自動生成されたメソッド・スタブ
	return null;
}





public void forEach(Object object) {
	// TODO 自動生成されたメソッド・スタブ
	
}
  
}
