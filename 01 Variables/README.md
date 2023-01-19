# 01 Variables
2023.01.19 ~ 진행중 

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
ex = 'bye';		// TYPE : String
```
```javascript
// 올바르지 않은 경우 (컴파일 에러)
var ex = 'hi';	// TYPE : String
ex = 1;			// TYPE : int
```

### ▶︎ dynamic
**정말 필요할때만 사용해야 함**  
JS에서의 var, let 같은것.  
값이 할당될때마다 해당 타입으로 바뀌는 동적 타입.  
타입이 명확하지 않을때 사용. (ex. 인터넷에서 받은 자료가 뭔지모를때)  
var 키워드로 선언할때 값을 할당하지 않으면  
자동으로 dynamic 형식으로 만들어짐.
```javascript
var ex1;		// dynamic, Null
var ex2 = 1;	// var, int
```
```javascript
// 가능한 경우
dynamic ex = 'hi'	// TYPE : String
ex = '1';			// TYPE : int
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