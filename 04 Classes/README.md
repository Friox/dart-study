# 04 Classes
클래스를 작성할때 프로퍼티는 타입을 사용해서 정의한다.  
`var` 사용은 좋지않다.  

## 인스턴스 생성
얘도 다를거없다, 다만 `new` 를 굳이 붙일 필요가 없다는 점.
```javascript
var test = Test();
```

## 클래스 메서드
```javascript
class Test {
	int prop1 = 1000;
	String prop2 = 'hi';
	
	void classMethod() {
		print('prop1: $prop1');
	}
}
```
클래스 메서드에서 `$this.prop1` 이 아닌 `$prop1` 을 사용하였는데,  
(같은 이름의 변수가 있을 경우를 제외하고)  
Dart 클래스 메서드 내에서 `this` 를 사용하지 않는것이 좋다고 한다.  

## 생성자 (Positional Parameter)
두가지 방법이 있다.  
```javascript
// late 를 사용하는 일반적인 방법
class Test {
	late final String prop1;
	late int prop2;
	
	Test(String prop1, int prop2) {
		this.prop1 = prop1;
		this.prop2 = prop2;
	}
}
```

기본적으로 명시하지않는 이상 모든 변수는 non-nullable로, 값이 없을 수 없다.  
따라서 나중에 값을 넣겠다고 `late` 를 사용하여 알려준다.  
그리고 매개변수 두개를 차례대로 입력받아 각각의 변수로 넣는다.

```javascript
// late 를 사용하지 않는 간결한 방법
class Test {
	final String prop1;
	int prop2;
	
	Test(this.prop1, this.prop2);
}
```
값을받아 설정만할경우 위와같이 간결하게 나타낼 수 있다.  
이때 주의할 점은 값의 순서가 중요하고, `this` 를 꼭 붙여야 한다.  

위 두 방법은 생성자 매개변수의 순서가 중요하다.  
클래스의 규모가 커질경우 순서를 외우기 어렵고, 뭐가뭔지 해석하기 어려운 경우가 많아서  
생성자의 매개변수를 함수에서의 명명된 매개변수처럼 바꿔 사용하는 경우가 대부분이다.  

## 생성자 (Named Parameter)
```javascript
// 클래스 선언
class Test {
	String prop1;
	int prop2;
	
	Test({
		required this.prop1, 
		required this.prop2
	})
}

// 인스턴스 생성
void main() {
	var obj1 = Test(prop1: 'LEE', prop2: 24);
}
```

생성자 매개변수를 '{}' (중괄호)로 감싸고 각 매개변수에 `required` 를 붙여주면된다.  
인스턴스를 생성할때는 변수이름과 콜론을 붙여 작성하면 된다.  

## Named Constructor
생성자를 여러개로 나눌수있다 (?)
```javascript
class Test {
	final String prop1;
	int prop2;
	Test.createLEE({required int prop2})
		:	this.prop1 = 'LEE',
			this.prop2 = prop2;

	Test.createWOO(int prop2)
		:	this.prop1 = 'WOO',
			this.prop2 = prop2;
}

void main() {
	var leeObject = Test.createLEE(prop2: 24);
	var wooObject = Test.createWOO(24);
}
```

클래스 매개변수를 구성하고 ':' (콜론)을 붙여 초기화할 멤버변수의 리스트를 정할 수 있다.  
부가설명으로, Named Parameter는 기본적으로 `required` 가 아니므로  
`required` 를 명시해야하고, Positional Parameter는 기본적으로 `required` 이기때문에  
굳이 명시할 필요는 없다.

## Cascade Operator
인스턴스에 대해 여러항목을 바꾸고싶을때 다른언어같은경우 보통 이렇게한다.
```javascript
void main() {
	var leeObject = Test.createLEE(prop2: 24);
	leeObject.prop1 = ~~~;
	leeObject.prop2 = ~~~;
	leeObject.prop3 = ~~~;
}
```
Dart 에서는 이렇게도 할 수 있다.
```javascript
void main() {
	var leeObject = Test.createLEE(prop2: 24);
	leeObject
	..prop1 = ~~~
	..prop2 = ~~~
	..prop3 = ~~~;
}
```
이렇게 `..` 으로 연속해서 클래스를 가리킬 수 있다.  
멤버변수 접근뿐만아니라 메서드까지 호출할 수 있다.

## Enum
미리 정의해놓은 리스트다. 타입으로 작용한다  
```javascript
// 상당부분 간략화함
enum Team { red, blue }
enum XPLevel { beginner, medium, pro }

class Player {
	Team team;
	XPLevel xp;
}

void main() {
	var obj = Player(team: Team.red, xp: XPLevel.medium);
}
```