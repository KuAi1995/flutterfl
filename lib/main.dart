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
                Global.widget = TextRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'Text',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open Button route"),
              onPressed: () {
                Global.widget = ButtonRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'Button',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open Image route"),
              onPressed: () {
                Global.widget = ImageRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'Image',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open SwitchAndCheckBox route"),
              onPressed: () {
                Global.widget = SwitchAndCheckBoxRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'SwitchAndCheckBox',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open TextField route"),
              onPressed: () {
                Global.widget = TextFieldRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'TextField',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open FocusTest route"),
              onPressed: () {
                Global.widget = FocusTestRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'FocusTest',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open FormTest route"),
              onPressed: () {
                Global.widget = FormTestRoute();
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: 'FormTest',
                    );
                  }),
                );
              },
            ),
            TextButton(
              child: Text("open Display route"),
              onPressed: () {
                Global.widget = Text('DisplayWidget');
                // 导航到新路由
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DisplayRoute(
                      title: '',
                    );
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
