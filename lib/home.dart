import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/Home/RecentPlaylists/recently_played.dart';
import 'package:spotify_clone/widgets/Home/music_podcast_selection.dart';
import 'package:spotify_clone/widgets/Home/recently_played_playlists.dart';
import 'package:spotify_clone/widgets/Home/top_bar_profile.dart';

class SpotifyHome extends StatefulWidget {
  const SpotifyHome({Key? key}) : super(key: key);

  @override
  State<SpotifyHome> createState() => _SpotifyHomeState();
}

class _SpotifyHomeState extends State<SpotifyHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SpotifyHomeTopBar(),
          MusicAndPodcastSelection(),
          SizedBox(
            height: 10,
          ),
          RecentlyPlayedMusicPlaylists(),
          SizedBox(
            height: 20,
          ),
          Text("Recently Played",
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white,fontSize: 16,),),
          RecentlyPlayed()
        ],
      ),
    ),
    const Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    const Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
                label: 'Home',
                tooltip: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 40,
                ),
                activeIcon: Icon(
                  Icons.pageview_rounded,
                  color: Colors.white,
                  size: 40,
                ),
                label: 'Search',
                tooltip: 'search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.library_books_outlined,
                  color: Colors.white,
                  size: 40,
                ),
                activeIcon: Icon(
                  Icons.library_books,
                  color: Colors.white,
                  size: 40,
                ),
                label: 'Your Library',
                tooltip: 'your library',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
            selectedFontSize: 12,
          ),
        ),
      ),
    );
  }
}
