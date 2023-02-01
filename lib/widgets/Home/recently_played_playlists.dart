import 'package:flutter/material.dart';

class RecentlyPlayedMusicPlaylists extends StatelessWidget {
  const RecentlyPlayedMusicPlaylists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> recentlyPlayedPlaylists = [
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      },
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      },
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      },
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      },
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      },
      {
        'cinema': 'Ante Sundaraniki',
        'image': 'assets/images/antesundaraniki.jpeg',
      }
    ];

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        for (var i = 0; i < recentlyPlayedPlaylists.length; i++)
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 41, 39, 39),
                borderRadius: BorderRadius.circular(5),
              ),
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.width * 0.15,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      recentlyPlayedPlaylists[i]['image'],
                      height: MediaQuery.of(context).size.width * 0.15,
                      width: MediaQuery.of(context).size.width * 0.15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Text(
                      recentlyPlayedPlaylists[i]['cinema'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
