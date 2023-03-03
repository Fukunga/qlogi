import 'package:flutter/material.dart';
import 'package:qlogi/itemlist_page.dart';

///////////////////////////////////////////////////////////
class S_Model {
  // 商品ID
  final String ItemId;
  // 商品名
  final String ItemName;
  // 在庫数
  final int A_QTY;
  // 最終更新日
  final String LastUpdateDay;
  // 色
  final String ItemImage;

  //コンストラクタ
  S_Model(this.ItemId, this.ItemName, this.A_QTY, this.LastUpdateDay,
      this.ItemImage);
}

///////////////////////////////////////////////////////////
final models = [
  S_Model('I000001', 'XXXXXXXXXXXXXXXXXXXXXX', 100, '2023/01/17',
      'assets/images/20.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/9.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/10.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/1.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/2.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/3.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/4.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/5.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/6.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/7.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/8.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/9.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/10.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/1.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  S_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  S_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  S_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  S_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
];
