import 'package:flutter/material.dart';

import 'global.dart';

class DisplayRoute extends StatefulWidget {
  const DisplayRoute({super.key, required this.title});

  final String title;

  @override
  State<DisplayRoute> createState() => _DisplayRouteState();
}

class _DisplayRouteState extends State<DisplayRoute> {
  void _replaceWidget() {
    setState(() {
      Global.widget = Text('Replaced Widget done');
    });
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
          children: [
            Global.widget,
            Visibility(
              visible: false, // 控制按钮的可见性
              child: ElevatedButton(
                onPressed: _replaceWidget,
                child: Text('Replace Widget'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
