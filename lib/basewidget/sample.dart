import 'package:flutter/material.dart';

class SampleRoute extends StatelessWidget {
  const SampleRoute({super.key});

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
}
