void main() {
  String? ex = 'hello'; // null 허용
  ex = null; // 가능

  // null이 아닐때 String 속성에 접근하기
  // 첫번째 방법
  if (ex != null) {
    // if문으로 null 체크 후 스코프안에서 조회
    ex.isNotEmpty;
  }

  // 두번째 방법
  // 변수접근 시 물음표를 붙여 조회
  ex?.isNotEmpty;
}
