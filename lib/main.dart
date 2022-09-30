import 'package:flutter/material.dart';
import 'package:judy_app/user/user_login.dart'; //user_login page import

/*
* 무조건 메인에서 시작된다.
* runApp
* MyApp이라는 위젯 클래스를 실행한다.
* */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    * 프로젝트를 생성하면 MaterialApp에 title, theme, home 이라는 세가지 옵션이 들어가있다.
    * 이때 필수 속성은 home -> 제일 먼저 나오는 페이지가 어떤 것일지 반드시 지정을 해주어야 한다.
    * home의 속성 값은 반드시 위젯이어야 한다.
    *
    * 나의 의도는 로그인 페이지를 불러올 것이라서 home에 로그인 페이지 클래스 명을 적어놓았다.(호출)
    * */
    return const MaterialApp(
      home : UserLoginPage(), //로그인 페이지가 맨 처음에 나오도록 홈으로 지정할 것이야!
    );
  }
}
