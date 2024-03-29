import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:qlogi/itemlist_page.dart';
import 'package:qlogi/dashboard_page.dart';
import 'package:qlogi/new_item_page.dart';
import 'package:qlogi/transaction_page.dart';

//アプリ全体
void main() {
  const app = MaterialApp(home: MainFrame(), debugShowCheckedModeBanner: false);
  const scope = ProviderScope(child: app);
  runApp(scope);
}

//プロバイダー
final indexProvider = StateProvider((ref) {
  return 1;
});

//アプリのメインフレーム
class MainFrame extends ConsumerWidget {
  const MainFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    //appbar設定
    final myAppBar = AppBar(
      title: Text("Qlogi", style: GoogleFonts.goldman()),
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Go to the next page',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
      ],
    );

    //bottomnavigationbar設定
    final bottombar = Container(
      color: Colors.white,
      child: MoltenBottomNavigationBar(
        barColor: Colors.blue,
        domeCircleColor: Colors.white,
        duration: Duration(microseconds: 1),
        selectedIndex: index,
        onTabChange: (clickedIndex) {
          ref.read(indexProvider.notifier).state = clickedIndex;
        },
        tabs: [
          MoltenTab(
            selectedColor: Colors.blue,
            unselectedColor: Colors.white,
            icon: Icon(Icons.query_stats),
          ),
          MoltenTab(
            selectedColor: Colors.blue,
            unselectedColor: Colors.white,
            icon: Icon(Icons.inventory_2),
          ),
          MoltenTab(
            selectedColor: Colors.blue,
            unselectedColor: Colors.white,
            icon: Icon(Icons.screen_rotation_alt),
          ),
        ],
      ),
    );

    //floatingactionbutton設定
    final ActionButton = FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        final notifier = ref.read(indexProvider.notifier);
        notifier.state = 0;
      },
    );

    //ページ設定
    const pages = [
      NewAddItemPage(),
      ItemlistPage(),
      PageB(),
    ];

    //表示実行
    return Scaffold(
      appBar: myAppBar,
      bottomNavigationBar: bottombar,
      floatingActionButton: ActionButton,
      body: pages[index],
    );
  }
}



  //   // OFL を守るために このコードが必要
  // LicenseRegistry.addLicense(() async* {
  //   final license = await rootBundle.loadString(
  //     'google_fonts/OFL.txt',
  //   );
  //   yield LicenseEntryWithLineBreaks(
  //     ['google_fonts'],
  //     license,
  //   );
  // });

