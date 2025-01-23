import 'package:flutter/material.dart';
import 'package:flutterfl/basewidget/button_route.dart';
import 'package:flutterfl/basewidget/text_route.dart';

import 'basewidget/focus_test_route.dart';
import 'basewidget/image_route.dart';
import 'basewidget/switch_and_checkBox_route.dart';
import 'basewidget/text_field_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("open Text route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TextRoute();
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open Button route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ButtonRoute(
                      title: '',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open Image route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ImageRoute(
                      title: '',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open SwitchAndCheckBox route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SwitchAndCheckBoxRoute(
                      title: '',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open TextField route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return TextFieldRoute(
                      title: '',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open FocusTest route"),
              onPressed: () {
                //导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FocusTestRoute();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
