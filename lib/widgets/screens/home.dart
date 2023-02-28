import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: SpotifyColors.blackColor,
      child: const Text("Home"),
    );
  }
}
