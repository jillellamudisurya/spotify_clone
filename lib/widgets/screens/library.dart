import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';

class Library extends StatelessWidget {
  const Library({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SpotifyColors.blackColor,
      child: const Text("Library"),
    );
  }
}