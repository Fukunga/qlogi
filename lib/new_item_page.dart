import 'package:flutter/material.dart';
import 'package:qlogi/itemlist.dart';

/// 馬のカード Widget
class HorseCard extends StatelessWidget {
  const HorseCard({
    super.key,
    required this.model,
  });
  // データが入ったモデル
  final S_Model model;

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = SizedBox(
      height: 100,
      child: Image.asset(
        '${model.ItemImage}',
      ),
    );

    // 名前
    final text = Text(
      model.ItemName,
      style: const TextStyle(fontSize: 20),
    );

    // 画像と名前を縦に並べる
    final imgAndText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        img,
        text,
      ],
    );

    // カード部分を作るコンテナ
    return Container(
      decoration: BoxDecoration(
        // 色
        color: Colors.orange,
        // 角丸
        borderRadius: BorderRadius.circular(20),
        // 影
        boxShadow: [
          BoxShadow(
            // 影の設定
            color: Colors.black.withOpacity(0.2), //色
            spreadRadius: 2, // 広がりの大きさ
            blurRadius: 2, // ぼかしの強さ
            offset: const Offset(0, 2), // 方向
          ),
        ],
      ),
      child: imgAndText,
    );
  }
}

// モデル => ウィジェット に変換する関数
Widget modelToWidget(S_Model model) {
  // ページの部分
  return Container(
    // カードの周りに 10 ずつスペースを空ける
    padding: const EdgeInsets.all(10),
    // 中身は カード
    child: HorseCard(model: model),
  );
  // カードを使う
}

class NewAddItemPage extends StatelessWidget {
  const NewAddItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // カルーセル
    final carousel = PageView.builder(
      // カルーセルのコントローラー
      controller: PageController(
        // 左右のカードがどのくらい見えるかのバランスを決める
        viewportFraction: 0.6,
      ),
      // カードの数 = モデルの数
      itemCount: models.length,
      // モデルをWidgetに変換する関数
      itemBuilder: (c, i) => modelToWidget(models[i]),
    );

    return Scaffold(
      body: Container(
        height: 200,
        color: Colors.white,
        child: carousel,
      ),
    );
  }
}
