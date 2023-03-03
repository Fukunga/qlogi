import 'package:flutter/material.dart';

//
// 画面 B
//
class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Text("入出庫履歴"),
      ),
    );
  }
}
