import 'package:flutter/material.dart';

class SpotifyHomeTopBar extends StatelessWidget {
  const SpotifyHomeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
                radius: 25,
                child: Image.asset('assets/images/suryacompressed.png')),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Good evening',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: MediaQuery.of(context).size.width * 0.07,
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              Icons.downloading,
              color: Colors.white,
              size: MediaQuery.of(context).size.width * 0.07,
            )
          ],
        )
      ],
    );
  }
}
