import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//로그인 후 내가 기록해둔 와드 리스트를 보여주는 페이지
class WodListPage extends StatefulWidget{
  const WodListPage({Key? key}) : super(key: key);

  @override
  _WodListPageState createState() => _WodListPageState();
}
class _WodListPageState extends State<WodListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
        backgroundColor: Colors.black,
      ),
    );
  }
  
}