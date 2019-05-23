import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Example',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var number=0;

  void increasenumber()
  {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter counter demo")
      ),
      body: Center(
        child: Text("Button pressed $number times", style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          increasenumber();
        },
        child: Text("+", style: TextStyle(fontSize: 30),),
      ),

    );

  }
}
