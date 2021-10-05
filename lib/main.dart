import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  //dart 언어
                  //argument
                  //ignore: avoid_print
                  print("Text buttonnnn");
                },
                onLongPress: () {
                  print("Long Press Text buttonnnn");
                },
                child: Text(
                  "Text Button", //가장 상위에 있는 버튼 = 텍스트 버튼
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
              ), //style같은 느낌
              ElevatedButton(
                onPressed: () {
                  print("elevated button");
                },
                child: Text("elevated buttonnnnnn"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0), //0.0 ractangle
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  print("Out lIned btn");
                },
                child: Text("0ut lined btn"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  print("icon text button");
                },
                icon: Icon(
                  Icons.home,
                  size: 30.0,
                ),
                label: Text("Go to hoMe"),
                style: TextButton.styleFrom(
                  primary: Colors.purple, //letter color
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  print("icon text button");
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black87,
                  size: 30.0,
                ),
                label: Text("Go to hoMe"),
                style: TextButton.styleFrom(
                  primary: Colors.purple, //letter color
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  print("icon elevated btn");
                },
                icon: Icon(
                  Icons.home,
                  size: 20.0,
                ),
                label: Text("Go to h0Me"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(200, 50),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  print("outlined button with icon");
                }, //null 은 비활성화
                icon: Icon(
                  Icons.home,
                  size: 20.0,
                ),
                label: Text("Go to home"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(200, 50),
                ),
              ),
              ElevatedButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.home,
                  size: 20.0,
                ),
                label: Text("Go to h0Me"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onSurface: Colors.pink, //null값 넣었을때 색깔
                  minimumSize: Size(200, 50),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                buttonPadding: EdgeInsets.fromLTRB(20, 0, 20, 0), //두개 간격,
                children: [
                  TextButton(
                    onPressed: () {
                      print('');
                    },
                    child: Text(''),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('');
                    },
                    child: Text(''),
                  ),
                ],
              )
            ],
          ),
        ));
  } //다트 언어를 쓰면서 가장 먼저 method를 쓰고 길어지게 되면
  //클래스로 빼서 다른 파일 만들어 import시킨다
}

//const 가 된 부분은 다시 만들지 않아서 화질이 더 좋다. 정해진 글자 절대 안바뀌는 내용
// 변수 예)$ 있는건 못씀
