import 'package:flutter/material.dart';

class SwitchAndCheckBoxRoute extends StatefulWidget {
  const SwitchAndCheckBoxRoute({super.key});

  @override
  State<SwitchAndCheckBoxRoute> createState() => _SwitchAndCheckBoxRouteState();
}

class _SwitchAndCheckBoxRouteState extends State<SwitchAndCheckBoxRoute> {
  bool _switchSelected = true; // 维护单选开关状态
  bool _checkboxSelected = true; // 维护复选框状态

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Switch(
            value: _switchSelected, //当前状态
            onChanged: (value) {
              // 重新构建页面
              setState(() {
                _switchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red, // 选中时的颜色
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value!;
              });
            },
          )
        ],
      ),
    );
  }
}
