import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginPage extends StatefulWidget{
  @override
  _UserLoginPageState createState() => _UserLoginPageState();

}
class _UserLoginPageState extends State<UserLoginPage>{

  final _useridController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("로그인", style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: _formkey,
        child: Column(),
      ),
    );
  }
}