import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: HelloPage('Helloworld')
      home: HelloPage('Helloworld')
    );
  }
}

//stful 치면 자동생성
class  HelloPage extends StatefulWidget { //수정안해도됨
  final String title;

  HelloPage(this.title): super(); //생성자추가 constructor

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> { //원하는 내용을 그려줌.
  String _message = 'Hello World';
  int _counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), //아이콘 변경
//          onPressed: () =>print('OK!!'), //눌릴때 action
          onPressed:_changeMessage, //눌릴때 action
          backgroundColor:  Color.fromRGBO(52 , 190, 233, 1)), //하단 동그라미버튼 +
        appBar:AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column( //위젯을 여러개 가질수있음
            mainAxisAlignment: MainAxisAlignment.center, //아래로 향하는 정렬방향을 센터로 준다.
//            crossAxisAlignment: CrossAxisAlignment.center,//반대로 향하는 곳을 센터
            children: <Widget>[
              Text(_message, style: TextStyle(fontSize: 30)),
              Text('$_counter', style: TextStyle(fontSize: 30)),
              RaisedButton(
                child: Text('화면이동'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CupertinoPage())  // ==intent
                  );
                },
              )
            ],
          ),

        ));
  }


void _changeMessage() {
  setState(() {
    _message = '헬로월드';
    _counter++;
  });
}
}




