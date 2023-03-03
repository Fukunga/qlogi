import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:qlogi/itemlist.dart';

///////////////////////////////////////////////////////////
// 使いやすくアレンジした Slidable
class MySlidable extends StatelessWidget {
  const MySlidable({
    super.key,
    required this.builder,
    this.left = const [],
    this.right = const [],
  });
  final Widget Function(SlidableController controller) builder;
  final List<CustomSlidableAction> left;
  final List<CustomSlidableAction> right;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: left.isEmpty
          ? null
          : ActionPane(
              extentRatio: 0.5,
              motion: const BehindMotion(),
              children: left,
            ),
      endActionPane: right.isEmpty
          ? null
          : ActionPane(
              extentRatio: 0.5,
              motion: const DrawerMotion(),
              children: right,
            ),
      child: Builder(
        builder: (context) {
          final controller = Slidable.of(context)!;
          return builder(controller);
        },
      ),
    );
  }
}

///////////////////////////////////////////////////////////
// リストに並べる

class ItemlistPage extends StatelessWidget {
  const ItemlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = ListView(
      // モデルたちの数だけ並べる
      children: List<Widget>.generate(
        models.length,
        (index) {
          // モデル1つ
          final model = models[index];
          return MySlidable(
            // 左アクションたち
            // * 右に置きたい時は left ではなく right を使う
            right: [
              // 左アクション1
              CustomSlidableAction(
                onPressed: (context) {},
                padding: EdgeInsets.all(2),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.create),
                      Text("詳細"),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
              // 左アクション2
              CustomSlidableAction(
                onPressed: (context) {},
                padding: EdgeInsets.all(2),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download),
                      Text("入庫"),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
              // 左アクション3
              CustomSlidableAction(
                onPressed: (context) {},
                padding: EdgeInsets.all(2),
                child: Container(
                  width: 60,
                  height: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.upload),
                      Text("出庫"),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
            ],
            // 本体
            builder: (controller) {
              //
              // ここは自由なWidget
              //
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: Container(
                  height: 70,
                  // ここからがポイント
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // ここまで
                    // color: Colors.lime.shade100,
                  ),
                  child: ListTile(
                    onTap: () {
                      //controller.openStartActionPane(); // この関数で左側をオープン
                      controller.openEndActionPane(); // この関数で右側をオープン
                    },
                    leading: Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        model.ItemImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Text(
                      model.ItemName,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(model.ItemId +
                        "  " +
                        model.A_QTY.toString() +
                        "  " +
                        model.LastUpdateDay),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SlidableAutoCloseBehavior(
        child: list,
      ),
    );
  }
}
