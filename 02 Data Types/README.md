# 02 Data Types
2023.01.20

## Basic Data Types
Dart에서 다루는 거의 모든것들은 객체라고한다.  
밑의 기본 자료형은 물론이고 함수도 객체라고한다.
* String: 문자열
* bool: 논리값 (true, false)
* int: 정수, num으로부터 파생됨
* dobule: 실수, num으로부터 파생됨
* num: int, double을 포함한 수

## List
선언은 다음과 같이 한다.  
두 줄 모두 같은 결과를 낸다.
```javascript
var ex1 = [1, 2, 3, 4];
List<int> ex2 = [1, 2, 3, 4];
```
Dart의 List는 `Collection if`와 `Collection for`를 지원한다.  
아래와 같이 요소에 if또는 for를 쓸수있다고 한다.
```javascript
var flag = true;

// numbers = [1, 2, 3, 4, 5];
var numbers = [1, 2, 3, 4, if (flag) 5];

// devices = ['iPhone SE2', 'airpods 3rd', 'iPhone 13 pro', 'airpods pro 2nd',];
var oldDevices = ['iPhone SE2', 'airpods 3rd'];
var devices = [
	'iPhone 13 pro',
	'airpods pro 2nd',
	for (var device in oldDevices) device
];
```

## Set
진짜 List와 비슷하다. 차이점이라곤 중복허용안한다는거.  
Collection if, for 모두 사용할 수 있다.


## String Interpolation
String(text)에 변수를 추가하는 방법.  
변수를 그냥 가져다쓸때는 $(달러)옆에 변수명을 쓰면 된다.  
정수에 5를 더하는것처럼 계산하는 경우면 $옆에 중괄호를 열고  
계산식을 쓴 후 닫으면 된다.
```javascript
var name = 'friox';
var code = 10;
var nameInterpolation = 'name: $name';
var codeInterpolation = "code: ${code + 10}"
```

## Map
JS, TS에서의 object, 파이썬에서의 dictionary 같은 것.  
키-밸류 쌍의 값을 담을 수 있다.  
Map<키 자료형, 값 자료형>, var로 하면 타입을 컴파일러가 유추해서 다해준다.
```javascript
var map1 = {
	'person1': 'A',
	'person2': 'B',
	'person3': 'C'
}

Map<int, bool> map2 = {
	0: true,
	1: false,
	2: true
}