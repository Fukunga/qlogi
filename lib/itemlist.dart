///////////////////////////////////////////////////////////

class ItemsList_Model {
  // 商品ID
  final String ItemId;
  // 商品名
  final String ItemName;
  // 在庫数
  final int A_QTY;
  // 最終更新日
  final String LastUpdateDay;
  // 画像
  final String ItemImage;

  //コンストラクタ
  ItemsList_Model(
    this.ItemId,
    this.ItemName,
    this.A_QTY,
    this.LastUpdateDay,
    this.ItemImage,
  );
}

///////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////

class ItemDetail_Model {
  // 商品ID
  final String ItemId;
  // 商品名
  final String ItemName;
  // 画像
  final String ItemImage1;
  final String ItemImage2;
  final String ItemImage3;
  final String ItemImage4;
  final String ItemImage5;
  final String ItemImage6;
  final String ItemImage7;
  final String ItemImage8;
  final String ItemImage9;
  final String ItemImage10;
  final String ItemImage11;
  final String ItemImage12;
  final String ItemImage13;
  final String ItemImage14;
  final String ItemImage15;
  // サイズ
  final String ItemHeight;
  final String ItemWidth;
  final String ItemDepth;
  // 重量
  final String ItemWeight;

  //コンストラクタ
  ItemDetail_Model(
    this.ItemId,
    this.ItemName,
    this.ItemImage1,
    this.ItemImage2,
    this.ItemImage3,
    this.ItemImage4,
    this.ItemImage5,
    this.ItemImage6,
    this.ItemImage7,
    this.ItemImage8,
    this.ItemImage9,
    this.ItemImage10,
    this.ItemImage11,
    this.ItemImage12,
    this.ItemImage13,
    this.ItemImage14,
    this.ItemImage15,
    this.ItemHeight,
    this.ItemWidth,
    this.ItemDepth,
    this.ItemWeight,
  );
}

///////////////////////////////////////////////////////////
final SampleItemsListModels = [
  ItemsList_Model('I000001', 'XXXXXXXXXXXXXXXXXXXXXX', 100, '2023/01/17',
      'assets/images/20.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/9.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/10.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/1.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/8.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/9.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/10.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/1.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
];

final SampleItemDetailModels = [
  ItemsList_Model('I000001', 'XXXXXXXXXXXXXXXXXXXXXX', 100, '2023/01/17',
      'assets/images/20.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/9.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/10.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/1.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/8.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/9.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/10.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/1.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/2.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/3.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/4.jpg'),
  ItemsList_Model('I000001', 'ペット用品', 100, '2023/01/17', 'assets/images/5.jpg'),
  ItemsList_Model('I000001', 'DIY用品', 50, '2023/01/14', 'assets/images/6.jpg'),
  ItemsList_Model('I000001', '家電', 80, '2023/01/11', 'assets/images/7.jpg'),
  ItemsList_Model('I000001', '文房具', 120, '2023/01/12', 'assets/images/8.jpg'),
];
