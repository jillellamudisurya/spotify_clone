import 'package:flutter/material.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  State<RecentlyPlayed> createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  final ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> recentlyPlayed = [
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recentlyPlayed.length,
          // controller: _scrollController,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    recentlyPlayed[index]['image'],
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(recentlyPlayed[index]['cinema'],style: const TextStyle(color: Colors.white),)
              ],
            );
          }),
    );
  }
}

// Expanded(
//       // height: double.maxFinite,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: 10,
//         shrinkWrap: true,
//         itemBuilder: (context, index) {
//         return Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 padding: const EdgeInsets.only(left: 10,right: 10),
//                 height: 20,
//                 width: 40,
//                 color: Colors.red,
//               ),
//             ),
            
//           ],
//         );
//       }),
//     );