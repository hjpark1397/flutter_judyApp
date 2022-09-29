import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginPage extends StatefulWidget{
  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}
class _UserLoginPageState extends State<UserLoginPage>{

  final _useridController = TextEditingController();
  final _passwordController = TextEditingController();

  final _loginkey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로그인", style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: _loginkey, //유효성 검증
        child: ListView(
         children: [

         ],
        ),
      ),
    );
  }
}