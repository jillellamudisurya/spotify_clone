import 'package:flutter/material.dart';

class MusicAndPodcastSelection extends StatefulWidget {
  const MusicAndPodcastSelection({Key? key}) : super(key: key);

  @override
  State<MusicAndPodcastSelection> createState() =>
      _MusicAndPodcastSelectionState();
}

class _MusicAndPodcastSelectionState extends State<MusicAndPodcastSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: Row(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 41, 39, 39),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {},
            child: const Text("Music"),
          ),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 41, 39, 39),
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {},
            child: const Text("Podcasts & Shows"),
          ),
        ],
      ),
    );
  }
}
