package practice;

import extend.phone.Phone;

public class FlyingPhone implements Phone, Flying {
	private int minutes;
	
	public FlyingPhone(int minutes) {
		this.minutes = minutes;
	}
	
	public void call(String number) {
		System.out.println(number + "に電話します。通話できるのは飛んでいるときだけです。");
	}
	
	public void fly() {
		System.out.println(minutes + "分間飛びます。");
	}
	
	public void powerOff() {
		Flying.super.powerOff();
	}
}
