import 'package:flutter/material.dart';
import 'package:flutterfl/basewidget/button_widget.dart';
import 'package:flutterfl/basewidget/text_widget.dart';

import 'basewidget/image_widget.dart';
import 'basewidget/switch_and_checkBox_widget.dart';
import 'basewidget/text_field_widget.dart';

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
              child: Text("open Text Widget route"),
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
              child: Text("open Button Widget route"),
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
              child: Text("open Image Widget route"),
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
              child: Text("open SwitchAndCheckBox Widget route"),
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
              child: Text("open TextField Widget route"),
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
          ],
        ),
      ),
    );
  }
}
