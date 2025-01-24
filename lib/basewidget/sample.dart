import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SampleRoute extends StatefulWidget {
  const SampleRoute({super.key});

  @override
  State<SampleRoute> createState() => _SampleRoute();
}

class _SampleRoute extends State<SampleRoute> {
  @override
  void initState() {
    super.initState();
    //初始化状态
    if (kDebugMode) {
      print("initState");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Widget"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      )),
    );
  }

  @override
  void didUpdateWidget(SampleRoute oldWidget) {
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
