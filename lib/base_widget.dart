import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Base Widget"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("There are some Text"),
            Text("左对齐",
              textAlign: TextAlign.left,
            ),
            Text("做大行数1行，多余文字省略号截断"*4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text("文字1.5倍大小",
              textScaleFactor: 1.5,
            ),
            Text(" "),
            Text("TextStyle",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: Paint()..color=Colors.yellow,
                  decoration:TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed
              ),
            ),
            Text(" "),
            Text("TextSpan"),
            Text.rich(TextSpan(
                children: [
                  TextSpan(
                      text: "Home: "
                  ),
                  TextSpan(
                      text: "https://flutterchina.club",
                      style: TextStyle(
                          color: Colors.blue
                      ),
                  ),
                ]
            ))
          ],
        )
      ),
    );
  }

}