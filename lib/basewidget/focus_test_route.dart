import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FocusTestRoute extends StatefulWidget {
  const FocusTestRoute({super.key});

  @override
  State<FocusTestRoute> createState() => _FocusTestRouteState();
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  void initState() {
    super.initState();
    // 初始化状态
    if (kDebugMode) {
      print("initState");
    }
    focusNode1.addListener(() {
      if (kDebugMode) {
        print("focusNode.hasFocus: ${focusNode1.hasFocus}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("FocusTest route"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: focusNode1, //关联focusNode1
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: focusNode2, //关联focusNode2
              decoration: InputDecoration(labelText: "input2"),
            ),
            Builder(
              builder: (ctx) {
                return Column(
                  children: <Widget>[
                    ElevatedButton(
                      child: Text("移动焦点"),
                      onPressed: () {
                        // 将焦点从第一个TextField移到第二个TextField
                        // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                        // 这是第二种写法
                        focusScopeNode ??= FocusScope.of(context);
                        focusScopeNode?.requestFocus(focusNode2);
                      },
                    ),
                    ElevatedButton(
                      child: Text("隐藏键盘"),
                      onPressed: () {
                        // 当所有编辑框都失去焦点时键盘就会收起
                        focusNode1.unfocus();
                        focusNode2.unfocus();
                      },
                    ),
                  ],
                );
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "请输入用户名",
                prefixIcon: Icon(Icons.person),
                // 未获得焦点下划线设为灰色
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                // 获得焦点下划线设为蓝色
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            Theme(
                data: Theme.of(context).copyWith(
                    hintColor: Colors.grey[200], //定义下划线颜色
                    inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Colors.grey),
                        // 定义label字体样式
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: 14.0) // 定义提示文本样式
                        )),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          labelText: "用户名",
                          hintText: "用户名或邮箱",
                          prefixIcon: Icon(Icons.person)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "密码",
                          hintText: "您的登录密码",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 13.0)),
                      obscureText: true,
                    )
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  // 下滑线浅灰色，宽度1像素
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 1.0))),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "电子邮件地址",
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none //隐藏下划线
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
