import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Home Page"),
      ),
      body: Image.asset('asset/flag.jpg', height: 200, frameBuilder:
          (BuildContext context, Widget child, _, bool wasSynchronouslyLoaded) {
        return Container(
          padding: const EdgeInsets.all(80.0),
          height: 500,
          child: child,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        );
      }),
      body: Container(
            color: Colors.red,
            height: double.infinity,
            width: double.infinity,
            // alignment: Alignment.bottomCenter,
            child: Image.asset(
              'asset/flag.jpg',
              height: 100,
              fit: BoxFit.scaleDown,
              // alignment: Alignment.center,
              repeat: ImageRepeat.repeat,
            )));
    );
  }
}
