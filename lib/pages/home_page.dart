import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNavIndex = 0;
  List<IconData> iconList = [
    CupertinoIcons.home,
    CupertinoIcons.creditcard,
    CupertinoIcons.money_dollar,
    CupertinoIcons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: bottomNavIndex, children: pages),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) {
            setTabs(index);
          }
          //other params
          ),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 20,
            ),

            // shape:
            //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<Widget> pages = [
    const Text('screen-1'),
    const Text('screen-2'),
    const Text('screen-3'),
    const Text('screen-4'),
  ];

  setTabs(index) {
    setState(() {
      bottomNavIndex = index;
    });
  }
}
