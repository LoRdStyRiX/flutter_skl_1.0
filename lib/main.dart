import 'package:flutter/material.dart';
import 'package:flutter_skl_1/features/home/feed/page.dart';
import 'package:flutter_skl_1/features/home/market/page.dart';
import 'package:flutter_skl_1/features/home/profile/page.dart';
import 'package:flutter_skl_1/preference/icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce SKL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int selectedIndex = 0;

class _MainPageState extends State<MainPage> {
  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(icon,
          color: selectedIndex == index
              ? const Color(0xff6C5ECF)
              : const Color(0xff808191)),
    );
  }

  List<Widget> pages = [
    const FeedPage(),
    const MarketPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: pages[selectedIndex],
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            height: 80,
            color: const Color(0xffffffff),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildItemNav(CustomIcon.homebutton, 0),
                buildItemNav(CustomIcon.marketbutton, 1),
                buildItemNav(CustomIcon.profilebutton, 2),
              ],
            ),
          ),
        ));
  }
}
