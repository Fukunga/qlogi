import 'package:flutter/material.dart';

//
// 画面 A
//
class PageA extends StatelessWidget {
  const PageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            '画面 A',
            style: TextStyle(
              // 文字の大きさ
              fontSize: 20,
              // 文字の太さ
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
