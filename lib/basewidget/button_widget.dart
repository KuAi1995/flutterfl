import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ButtonWidget createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {
  int _counterSend = 0;
  int _counterAdd = 0;
  int _counterInfo = 0;
  String _send = "发送";
  String _add = "添加";
  String _info = "详情";

  void _onPressedSend() {
    setState(() {
      _counterSend++;
      _send = "send times: " "$_counterSend";
    });
  }

  void _onPressedAdd() {
    setState(() {
      _counterAdd++;
      _add = "add times: " "$_counterAdd";
    });
  }

  void _onPressedInfo() {
    setState(() {
      _counterInfo++;
      _info = "info times: " "$_counterInfo";
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
            onPressed: _onPressedSend,
          ),
          OutlinedButton.icon(
            icon: Icon(Icons.add),
            label: Text(_add),
            onPressed: _onPressedAdd,
          ),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text(_info),
            onPressed: _onPressedInfo,
          ),
        ],
      )),
    );
  }
}
