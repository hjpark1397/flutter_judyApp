import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/* 1. 클래스를 만들어준다. 해당 클래스가 Stateless위젯으로 사용될지, StatefulWidget으로 사용될지 생각한다.*/
class UserJoinPage extends StatefulWidget{
  const UserJoinPage({Key? key}) : super(key: key);

  @override
  _UserJoinPageState createState() => _UserJoinPageState();
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
}

//UserJoinPage를 부모로 하는 _UserJoinPageState 클래스를 선언한다.
class _UserJoinPageState extends State<UserJoinPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("회원가입"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}