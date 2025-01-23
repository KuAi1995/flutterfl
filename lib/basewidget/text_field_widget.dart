import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _TextFieldWidget createState() => _TextFieldWidget();
}

class _TextFieldWidget extends State<TextFieldWidget> {
  String _name = "";
  String _password = "";
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //初始化状态
    print("initState");

    _selectionController.text = "TextSelection control";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length); // 注意焦点在才生效 autofocus: true
    _passwordController.addListener(() {
      print(_passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Widget"),
      ),
      body: Center(
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
                  print("onChange: $value");
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
      ),
    );
  }

  @override
  void didUpdateWidget(TextFieldWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print(_passwordController.text);
    print("didUpdateWidget ");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
