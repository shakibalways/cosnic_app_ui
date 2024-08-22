
import 'package:cosmic_app/view/pages/home/home.dart';
import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    page = [
      const Home(),
      navBarPage(Icons.favorite),
      navBarPage(Icons.notifications),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex =index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: ""),
          // yes is correct
        ],
      ),
      body: page[selectedIndex],
    );
  }
  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 80,
        color: Colors.black,
      ),
    );
  }
}
