import 'package:ecommers_mobile/app/pages/accessories/accessories_page.dart';
import 'package:ecommers_mobile/app/pages/acoustics/acoustics_page.dart';
import 'package:ecommers_mobile/app/pages/vinyl/vinyl_page.dart';
import 'package:ecommers_mobile/app/theme/color_palette.dart';
import 'package:ecommers_mobile/app/theme/text_style.dart';
import 'package:ecommers_mobile/app/widgets/app_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    VinylPage(),
    AcousticsPage(),
    AccessoriesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getTitle() {
    if (_selectedIndex == 0) {
      return 'Винил';
    } else if (_selectedIndex == 1) {
      return 'Акустика';
    } else {
      return 'Аксессуары';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.authBackground,
      appBar: AppBar(
        title: Text(
          _getTitle(),
          style: Style.montserrat20w400,
        ),
        backgroundColor: const Color(0xFF7D4848),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.album_sharp),
            label: 'Винил',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.double_music_note),
            label: 'Акустика',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.headphones),
            label: 'Аксессуары',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF7D4848),
        onTap: _onItemTapped,
      ),
      drawer: const AppDrawer(),
    );
  }
}
