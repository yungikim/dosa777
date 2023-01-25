import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloPage("Hello World!!!"),
      // home: CupertinoPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  const HelloPage(this.title) : super();

  @override
  State<HelloPage> createState() => _HelloPageState();
}



class _HelloPageState extends State<HelloPage> {


  String _message = "헬로우 월드2";
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: _changeMessage),
      appBar: AppBar(title: Text(widget.title, style: TextStyle(fontSize: 30))),
      body: Center(
          child:
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
        Text(_message, style: TextStyle(fontSize: 30)),
        Text('$_count', style: TextStyle(fontSize: 30)),
                RaisedButton(child: Text("클릭"), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPage()));
                })
      ])),
    );
  }

  void _changeMessage() {
    setState(() {
      _message = "Hello World";
      _count++;
    });
  }
}
