import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:qlogi/itemlist.dart';

class DragScroller extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class HorseCard extends StatelessWidget {
  const HorseCard({
    super.key,
    required this.model,
  });
  // データが入ったモデル
  final ItemsList_Model model;

  @override
  Widget build(BuildContext context) {
    // カード部分を作るコンテナ
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            '${model.ItemImage}',
          ),
        ),
      ),
    );
  }
}

// モデル => ウィジェット に変換する関数
Widget modelToWidget(ItemsList_Model model) {
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
      scrollBehavior: DragScroller(),
      // カルーセルのコントローラー
      controller: PageController(
        // 左右のカードがどのくらい見えるかのバランスを決める
        viewportFraction: 0.6,
      ),
      // カードの数 = モデルの数
      itemCount: SampleItemsListModels.length,
      // モデルをWidgetに変換する関数
      itemBuilder: (c, i) => modelToWidget(SampleItemsListModels[i]),
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            height: 170,
            color: Colors.white,
            child: carousel,
          ),
          Text("test"),
        ],
      ),
    );
  }
}
