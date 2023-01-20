# 01 Variables
2023.01.19 ~ 2023.01.20 

## 변수 선언
dart에서 변수를 선언할때는 형식을 직접 지정하거나  
`var` 또는 `dynamic` 키워드를 사용하면 된다.  

### ▶︎ var
들어가는 값에 따라 타입을 추론함.  
한번 결정된 타입은 변하지 않음.  
사용하는 변수의 타입이 명확할때 사용
```javascript
// 올바른 경우
var ex = 'hi';	// TYPE : String
ex = 'bye';	// TYPE : String
```
```javascript
// 올바르지 않은 경우 (컴파일 에러)
var ex = 'hi';	// TYPE : String
ex = 1;	// TYPE : int
```

### ▶︎ dynamic
**정말 필요할때만 사용해야 함**  
JS에서의 var, let 같은것.  
값이 할당될때마다 해당 타입으로 바뀌는 동적 타입.  
타입이 명확하지 않을때 사용. (ex. 인터넷에서 받은 자료가 뭔지모를때)  
var 키워드로 선언할때 값을 할당하지 않으면  
자동으로 dynamic 형식으로 만들어짐.
```javascript
var ex1;	// dynamic, Null
var ex2 = 1;	// var, int
```
```javascript
// 가능한 경우
dynamic ex = 'hi'	// TYPE : String
ex = '1';	// TYPE : int
```

dynamic 타입은 if문 조건으로 타입을 확인하면 Scope내부에선  
확인한 타입으로 취급함.  
```javascript
dynamic ex = 'hi';
if (ex is String) {
	// 이 스코프 안에선 ex는 String 타입으로 취급함.
	print('ex is String Type');
}
```

## Null Safety
Dart는 Null을 참조할때 발생하는 다양한 예외를 런타임 전에 막기위해  
컴파일단계에서 Null에 관한것을 검사함.  
Null Safety란 변수 또는 데이터가 null이 될 수 있음을 명시하는 것  
Dart는 기본적으로 명시하지 않는 이상 non-nullable.
타입뒤에 '?'(물음표)를 붙이면 된다.

```javascript
String? ex = 'hi';	// Null 가능
ex = null;	// 가능
```

null을 체크한 후 사용하려면 변수명 옆에 물음표를 붙이고 속성 또는 메서드를 호출하면 된다.
```javascript
ex?.isNotEmpty
```
또는 if문으로 체크 후 사용해도 된다.
```javascript
if (ex != null) {
	ex.isNotEmpty;
}
```

## Final Variables
JS에서의 const 같은것.  
한번 할당된 값은 나중에 수정할 수 없다.
선언 시 값을 안넣어주면 할당 해제된 상태로 읽을 수 없다.
```javascript
final ex;
// print(ex)	error
ex = 'hello';	// TYPE: String
// ex = 'hi';	error, final keyword
```

## Late Varables
late는 final이나 var앞에 붙여줄 수 있는 수식어.  
초기화 시점을 뒤로 미루어주는 키워드다.  
late 키워드를 사용한 변수는, 값이 할당되지 않은 상태에서 접근을 시도하면  
예외를 발생시킨다. 사실 명시적으로 알아보기 쉽게하려는 쪽에 더 가깝다.

## Constant Variables
Dart 에서의 const는 JS, TS 에서의 const와 다르다.  
컴파일 시점에서 알고있는 값이 들어가는 변수다.  
나중에 API에서 받아오는 값 같이 어떤값인지 모르는 값은 들어갈 수 없다.  
API 키값이나 그런것들이 들어가는 변수

## 변수타입은 어떻게 써야하는가?
Google Dart 가이드라인에서는 이렇게 알려준다.  
지역변수를 포함하여 거의 모든경우에선 되도록 var을 사용하고,  
클래스 멤버변수를 선언할때는 자료형을 명시하라고 한다.