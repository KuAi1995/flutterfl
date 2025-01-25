import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterfl/base_widget/progress_route.dart';

class ProgressIndicatorRoute extends StatefulWidget {
  const ProgressIndicatorRoute({super.key});

  @override
  State<ProgressIndicatorRoute> createState() => _ProgressIndicatorRoute();
}

class _ProgressIndicatorRoute extends State<ProgressIndicatorRoute> {
  @override
  void initState() {
    super.initState();
    // 初始化状态
    if (kDebugMode) {
      print("initState");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 模糊进度条(会执行一个动画)
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        // 进度条显示50%
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
        // 模糊进度条(会执行一个旋转动画)
        CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        // 进度条显示50%，会显示一个半圆
        CircularProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
          value: .5,
        ),
        // 线性进度条高度指定为3
        SizedBox(
          height: 3,
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          ),
        ),
        // 圆形进度条直径指定为100
        SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .7,
          ),
        ),
        // 宽高不等，显示为椭圆
        SizedBox(
          height: 100,
          width: 130,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            value: .7,
          ),
        ),
        ProgressRoute(),
      ],
    ));
  }

  @override
  void didUpdateWidget(ProgressIndicatorRoute oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kDebugMode) {
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
