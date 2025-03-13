# Dart
학습기간 : 2023.01.18 ~ 2023.02.06  
목적 : Flutter 배경지식

## Why Dart?
* UI에 최적화
* 생산적인 개발환경
* 모든플랫폼(mobile, desktop, backend, ...)에서 빠름

## Dart Compiler
Dart에는 두가지 컴파일러가 있다.
* Dart Native  
  Dart로 작성한 코드를 여러 CPU의 아키텍처(ARM32, ARM64, x86_64)에 맞게 변환해주는 컴파일러  
  세부적으로 JIT, AOT 컴파일러가 있다.

  > **AOT (Ahead-Of-Time) Compile**  
  시스템이 바로 실행할 수 있는 기계어로 미리 컴파일하는 방식  
  빌드속도는 느리고, 동작속도는 빠름  

  > **JIT (Just-In-Time) Compile**  
  필요할때 마다 기계어로 변환하는 방식  
  AOT에 비해 빌드속도는 빠르고, 동작속도는 느림  

  UI 개발중인경우 변화나 결과를 즉시 확인해야하는데 사소한 변화가 있을때 마다  
  모든 코드를 AOT방식으로 컴파일할 경우 미리볼 수 없다.  
  그래서 Dart는 개발중일때 Dart VM 위에서 JIT방식으로 컴파일하여 변화를 즉시 확인할 수 있게하고,  
  개발이 끝난후 릴리즈때는 AOT 방식으로 컴파일하여 기기에서의 동작속도를 빠르게 한다.  

  > 개발중 : Dart VM 위에서 실행, JIT, 동작속도 느린대신 결과를 바로 볼 수 있음.  
  > 배포시 : Native, AOT, 동작속도 빠름
* Dart Web  
  Dart로 작성한 코드를 javascript로 변환해주는 컴파일러

## Null Safety
Swift처럼 예상치못한 null 참조 에러를 방지하기 위해 컴파일 전  
null 값이 들어갈 수 있다고 명시하지 않은 변수에 null이 들어가는지 체크한다.  
이는 안전한 프로그램을 빌드하는데 필요하다.

## Flutter와 Dart의 관계
Flutter 프레임워크와 Dart 언어는 모두 Google에서 개발했다.  
따라서 Flutter 프레임워크를 최적화 하는데 있어 Dart 언어의 변경이 필요하다 싶으면  
Google이 Dart 언어를 수정할 수 있다.  
예를들어 기존 Dart 언어는 Native 바이너리를 지원하는 AOT 툴체인이 없었는데,  
지금은 Dart 언어에 AOT 툴체인이 있다.  
이것은 Flutter 개발팀이 다양한 플랫폼에서 빠른속도로 동작하기위해  
Dart 개발팀에 요청하여 생긴것이라고 한다.  
(애플실리콘과 소프트웨어 관계라고 하면 될라나?...)
