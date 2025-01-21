import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ButtonWidget createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {
  int _counter = 0;
  String _send = "发送";
  String _add = "添加";
  String _info = "详情";

  void _onPressed() {
    setState(() {
      _counter++;
      _send = "send" "$_counter";
      _add = "add" "$_counter";
      _info = "info" "$_counter";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text("ElevatedButton"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("TextButton"),
            onPressed: () {},
          ),
          OutlinedButton(
            child: Text("OutlinedButton"),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text(_send),
            onPressed: _onPressed,
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text(_add),
            onPressed: _onPressed,
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text(_info),
            onPressed: _onPressed,
          ),
        ],
      )),
    );
  }
}
