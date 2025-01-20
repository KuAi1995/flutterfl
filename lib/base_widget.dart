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
        child: Text("There are some base widget"),
      ),
    );
  }

}