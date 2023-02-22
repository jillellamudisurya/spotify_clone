import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/widgets/screens/home.dart';
import 'package:spotify_clone/widgets/screens/library.dart';
import 'package:spotify_clone/widgets/screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  //Total Screens
  final List<Widget> screens = const [
    Home(),
    Search(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(true);
      },
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: screens,
              onPageChanged: (index) {
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: SpotifyColors.transparentColor,
          selectedFontSize: 14.0,
          unselectedFontSize: 14.0,
          selectedItemColor: SpotifyColors.whiteColor,
          unselectedItemColor: SpotifyColors.whiteColor,
          elevation: 0,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              label: 'Library',
            ),
          ],
        ),)
          ],
        ),
      ),
    );
  }
}
