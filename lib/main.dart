import 'package:flutter/material.dart';
import 'package:flutterfl/basewidget/button_route.dart';
import 'package:flutterfl/basewidget/text_route.dart';

import 'basewidget/focus_test_route.dart';
import 'basewidget/form_test_route.dart';
import 'basewidget/image_route.dart';
import 'basewidget/switch_and_checkbox_route.dart';
import 'basewidget/text_field_route.dart';
import 'display.dart';
import 'global.dart';

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
  void _toRoute(String routeName, Widget widget) {
    Global.widget = widget;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return DisplayRoute(
          title: routeName,
        );
      }),
    );
  }

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
                _toRoute('Text', TextRoute());
              },
            ),
            TextButton(
              child: Text("open Button route"),
              onPressed: () {
                _toRoute("Button", ButtonRoute());
              },
            ),
            TextButton(
              child: Text("open Image route"),
              onPressed: () {
                _toRoute("Image", ImageRoute());
              },
            ),
            TextButton(
              child: Text("open SwitchAndCheckBox route"),
              onPressed: () {
                _toRoute("SwitchAndCheckBox", SwitchAndCheckBoxRoute());
              },
            ),
            TextButton(
              child: Text("open TextField route"),
              onPressed: () {
                _toRoute("TextField", TextFieldRoute());
              },
            ),
            TextButton(
              child: Text("open FocusTest route"),
              onPressed: () {
                _toRoute("FocusTest", FocusTestRoute());
              },
            ),
            TextButton(
              child: Text("open FormTest route"),
              onPressed: () {
                _toRoute("FormTest", FormTestRoute());
              },
            ),
            TextButton(
              child: Text("open Display route"),
              onPressed: () {
                _toRoute('Display', Text('DisplayWidget'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
