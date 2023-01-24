# 02 Functions
2023.01.21 ~ 진행중

## 함수 정의
다른언어하고 다를게없다.  
```javascript
int plus(int a, int b) {
	return a + b;
}

// fat arrow syntax
int plus(int a, int b) => a + b;
```

## named parameter
예를들어 이름과 성을 받아 합쳐주는 함수가 있을때,  
```javascript
String fullName(String familyName, String givenName) {
	return '$familyName $givenName';
}
```
함수는 이렇게 정의했지만 사용자가 순서에 맞지않게 매개변수를 넘길 수 있다.  
그래서 순서상관없이 필요한 변수의 이름을 쓰고 값을 넘기는 방법을 제공한다.  
```javascript
fullName('Lee', 'Seunghun');	// 통상 사용 방법
fullName(familyName: 'Lee', givenName: 'Seunghun');	// 명명된 매개변수 사용 방법
```
이렇게 사용하려면 함수 정의부를 수정할 필요가 있다.  
매개변수 괄호를 중괄호로 한번 더 묶어주면 된다.  
```javascript
String fullName({String familyName, String givenName}) {
	return '$familyName $givenName';
}
```
하지만 이렇게해도 컴파일러에서 오류를 띄운다.  
순서가 없는만큼, 들어오는 매개변수가 없을경우를 따진다.  
두가지 해결방법이 있다.  
* 매개변수 기본값을 정하거나,
* 기본값 허용없이 무조건 들어와야한다고 명시하는 방법  

매개변수 기본값을 정하려면 정의부 매개변수 옆에 등호를 쓰고 명시하면 된다.
```javascript
String fullName({String familyName = 'Lee', String givenName = 'Seunghun'}) {
	return '$familyName $givenName';
}
```

무조건 들어와야 하는 값이면 타입 앞에 required 키워드를 붙이면 된다.  
```javascript
String fullName({required String familyName, required tring givenName}) {
	return '$familyName $givenName';
}
```

## Optional Positional Parameter
위치매개변수를 사용할때 굳이 필요없는 매개변수를 정할 수 있다.  
```javascript
int plus(int a, int b, [int? c]) => a + b + c;
```
이렇게 꼭 필요없는 매개변수를 괄호로 묶고 null을 허용한다고 하면 된다.  
이 방식은 중간에 위치한 매개변수에는 사용할 수 없고, 끝에오는것만 가능하다.  
3개의 매개변수가 있다고 하면, 두번째 매개변수만 옵션으로 받을 수 없고,  
3번째 매개변수 하나만 옵션으로 정하거나 두번째, 세번째 매개변수를 옵션으로 지정할 수 있다.  
String 형식은 String Interpolation을 사용할때 null이어도 정상적으로 표시하기때문에 상관없지만  
그 이외 자료형은 null을 체크한 후 사용해야한다.  
위 코드로 예시를 들면,  
```javascript
// 오류나는 코드
int plus(int a, int b, [int? c]) => a + b + c;

// 정상 코드
int plus(int a, int b, [int? c]) => a + b + (c ?? 0);
```
통상 Optional Positional Parameter를 사용할때는 매개변수에 null이 올 수 있다고 표시하고,  
기본값을 지정해준다.  
`??`는 `QQ Operator`이다.

## QQ Operator
`Question Question Operator`로 null 값을 다루는 연산자이다.  
두가지가 있다. `left (QQ Operator) right` 일때,  
`??` : (left ?? right) **left가 null이면 right를 반환, 그렇지 않으면 left를 반환**  
`??=` : (left ??= right) **left가 null이면 right를 left에 대입, 아니면 실행X**

## Typedef
C하고 똑같다  
```javascript
typedef intStringMap = Map<int, String>;
intStringMap m1;
```