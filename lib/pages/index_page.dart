import 'package:flutter/material.dart'; //google
import 'package:flutter/cupertino.dart'; //ios
import 'cart_page.dart';
import 'home_page.dart';
import 'member_page.dart';
import 'category_page.dart';

// class IndexPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('生活+')),
//       body: Center(
//         child: Text('生活+'),
//       ),
//     );
//   }
// }

class IndexPage extends StatefulWidget {
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home),
        // ignore: deprecated_member_use
        title: Text('Index')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search),
        // ignore: deprecated_member_use
        title: Text('Category')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart),
        // ignore: deprecated_member_use
        title: Text('Cart')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.circle),
        // ignore: deprecated_member_use
        title: Text('Mypage')),
  ];

  final List tabBodies = [HomePage(), CategryPage(), CartPage(), MemberPage()];

  int currentIndex = 0;
  var currentPage;
  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
