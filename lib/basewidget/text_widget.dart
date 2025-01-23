import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  const TextRoute({super.key});

  // 声明文本样式
  static const textStyle = TextStyle(
    fontFamily: 'Roboto',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("There are some Text"),
          Text(
            "左对齐",
            textAlign: TextAlign.left,
          ),
          Text(
            "最大行数1行，多余文字省略号截断 " * 4,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "文字1.5倍大小",
            textScaleFactor: 1.5,
          ),
          Text(" "),
          Text(
            "TextStyle",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
                background: Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed),
          ),
          Text(" "),
          Text("TextSpan"),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home: "),
            TextSpan(
              text: "https://flutterchina.club",
              style: TextStyle(color: Colors.blue),
            ),
          ])),
          Text(
            "Use the Roboto font for this text",
            style: textStyle,
          ),
          DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("DefaultTextStyle"),
                Text("DefaultTextStyle"),
                Text(
                  "TextStyle inherit: false",
                  style: TextStyle(
                      inherit: false, //2.不继承默认样式
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
