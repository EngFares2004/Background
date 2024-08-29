import 'package:background/home_screen_color.dart';
import 'package:background/home_screen_image.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IndexedStack(
        index: _currentIndex,
        children: const [
         HomeScreen(),
          HomeScreen2()

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens_outlined),
            label: 'Color Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image Screen',
          ),
        ],
      ),
    );
  }
}
