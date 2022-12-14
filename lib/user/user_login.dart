import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:judy_app/user/user_join.dart';
import 'package:judy_app/user/wod_list.dart';
import 'package:judy_app/util/custom_color.dart';
import 'package:lottie/lottie.dart';

/* flutter가 StatefulWidget을 만들때, State 객체를 만든다.
그리고 StatefulWidget을 빌드하라고 지시하면 createState() 가 호출된다.
 * */
class UserLoginPage extends StatefulWidget{
  const UserLoginPage({Key? key}) : super(key: key);

  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}
class _UserLoginPageState extends State<UserLoginPage>{

  final _useridController = TextEditingController();
  final _passwordController = TextEditingController();

  final _loginkey = GlobalKey<FormState>(); //유효성 검증 키 값

  //initState : 위젯이 생성될 때 처음으로 호출되는 메소드
  @override
  void initState(){
    firebaseAuthInit();
    super.initState();
  }

  void firebaseAuthInit() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }


  //dispose : state 제거 (페이지를 나갈 때)
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  //build : 반드시 widget을 리턴한다. (자주 호출되며, 랜더링 되는 부분)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("로그인", style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.white,
        child: Form(
          key: _loginkey, //유효성 검증
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            children: [
             const SizedBox(height: 80,),
             Lottie.asset('assets/lottiefiles/404_icon.json'),
             Lottie.asset('assets/lottiefiles/116410-hello.zip'),
             // Lottie.network('https://assets7.lottiefiles.com/packages/lf20_2QSlz3Li88.json'),
             // SizedBox(
             //   child: Image.asset('assets/images/helper_dark.png'),
             //   height: 150,
             //   width: 150,
             // ),
             const SizedBox(height: 20,),
             // SizedBox(
             //   width: 100,
             //   height: 100,
             //   child: Lottie.asset('assets/lottie/LottieHi.json'),
             // ),
             // Lottie.asset('assets/lottie/LottieHi.json'),
             // const Text("WODaily",
             //   textAlign: TextAlign.center,
             //   style: TextStyle(fontWeight: FontWeight.bold,
             //   fontSize: 25, color: Colors.white),
             // ),
             const SizedBox(height: 20,),
             // TextFormField(
             //    controller: _useridController,
             //    validator: (value){
             //
             //    },
             //   decoration: const InputDecoration(
             //     border:OutlineInputBorder(),
             //     hintText: '아이디 입력',
             //     hintStyle: TextStyle(color: Colors.white),
             //   ),
             //   cursorColor: Colors.white,
             //   style: const TextStyle(color:Colors.white),
             // ),
             // const SizedBox(height: 10,),//위 아래 폼 사이의 간격을 주기
             // TextFormField(
             //   controller: _passwordController,
             //   validator: (value){
             //
             //   },
             //   decoration: const InputDecoration(
             //       border:OutlineInputBorder(),
             //       hintText: '비밀번호 입력',
             //       hintStyle: TextStyle(color: Colors.white),
             //
             //   ),
             //   cursorColor: Colors.white,
             //   style: const TextStyle(color:Colors.white),
             //   obscureText: true,//비밀번호 형식으로 작성이 됨
             // ),
             const SizedBox(height: 20,),
             SizedBox(
               height: 50,
               child: ElevatedButton(
                 onPressed: (){
                   //로그인 버튼을 누르면 firebase에서 익명으로 로그인이 수행됨
                   FirebaseAuth.instance.signInAnonymously(); //토큰값이 console에 나타남
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const WodListPage()));
               }, child: const Text("로그인", style: TextStyle(color: Colors.black),),
               style: ElevatedButton.styleFrom(primary: Colors.white,),
               ),
             ),
             const SizedBox(height: 10,),
             // TextButton(onPressed: (){
             //   // 왜 Get 네비게이터 안되는거냐 킹받게
             //   // Get.to(() => UserJoinPage());
             //   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const UserJoinPage()));
             // }, child: const Text("아직 회원이 아니신가요?  회원가입하기"),
             // style: TextButton.styleFrom(primary: CustomColor.customlightcharcoal),),
             // const SizedBox(height: 10,),
             // SizedBox(
             //    height: 50,
             //    child: ElevatedButton(
             //      onPressed: (){
             //
             //      }, child: const Text("카카오톡으로 로그인", style: TextStyle(color: Colors.black),),
             //      style: ElevatedButton.styleFrom(primary: CustomColor.kakaoyellow,),
             //    ),
             //  ),
           ],
          ),
        ),
      ),
    );
  }
}

