import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:judy_app/util/custom_color.dart';

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

  final _loginkey = GlobalKey<FormState>();

  //initState : 위젯이 생성될 때 처음으로 호출되는 메소드
  @override
  void initState(){
    super.initState();
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
        title: const Text("로그인", style: TextStyle(color: Colors.black45),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        key: _loginkey, //유효성 검증
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
         children: [
           SizedBox(
             child: Image.asset('assets/images/dumbell.png'),
             height: 200,
             width: 200,
           ),
           const SizedBox(height: 10,),
           const Text("Today's WOD",
             textAlign: TextAlign.center,
             style: TextStyle(fontWeight: FontWeight.bold,
             fontSize: 25,color: Colors.black45),),
           const SizedBox(height: 10,),
           TextFormField(
              controller: _useridController,
              validator: (value){

              },
             decoration: const InputDecoration(
               border:OutlineInputBorder(),
               hintText: '아이디 입력',
               hintStyle: TextStyle(color: Colors.black45),
             ),
           ),
           const SizedBox(height: 10,),//위 아래 폼 사이의 간격을 주기
           TextFormField(
             controller: _passwordController,
             validator: (value){

             },
             decoration: const InputDecoration(
                 border:OutlineInputBorder(),
                 hintText: '비밀번호 입력',
                 hintStyle: TextStyle(color: Colors.black45),

             ),
             obscureText: true,//비밀번호 형식으로 작성이 됨
           ),
           const SizedBox(height: 20,),
           SizedBox(
             height: 50,
             child: ElevatedButton(
               onPressed: (){

             }, child: const Text("로그인", style: TextStyle(color: Colors.black45),),
             style: ElevatedButton.styleFrom(primary: CustomColor.custompastelyellow,),
             ),
           ),
           const SizedBox(height: 10,),
           TextButton(onPressed: (){

           }, child: const Text("아직 회원이 아니신가요?  회원가입하기"),
           style: TextButton.styleFrom(primary: CustomColor.customlightcharcoal),)
         ],
        ),
      ),
    );
  }
}