import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TextFieldRoute extends StatefulWidget {
  const TextFieldRoute({super.key});

  @override
  State<TextFieldRoute> createState() => _TextFieldRouteState();
}

class _TextFieldRouteState extends State<TextFieldRoute> {
  String _name = "";
  String _password = "";
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _selectionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //初始化状态
    if (kDebugMode) {
      print("initState");
    }

    _selectionController.text = "TextSelection control";
    _selectionController.selection = TextSelection(
        baseOffset: 2,
        extentOffset:
            _selectionController.text.length); // 注意焦点在才生效 autofocus: true
    _passwordController.addListener(() {
      if (kDebugMode) {
        print(_passwordController.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)),
            onChanged: (value) {
              //重新构建页面
              setState(() {
                _name = value;
                if (kDebugMode) {
                  print("onChange: $value");
                }
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
            controller: _passwordController,
          ),
          TextField(
            autofocus: true,
            controller: _selectionController,
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(TextFieldRoute oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kDebugMode) {
      print(_passwordController.text);
      print("didUpdateWidget ");
    }
  }

  @override
  void deactivate() {
    super.deactivate();
    if (kDebugMode) {
      print("deactivate");
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (kDebugMode) {
      print("dispose");
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    if (kDebugMode) {
      print("reassemble");
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (kDebugMode) {
      print("didChangeDependencies");
    }
  }
}
