import 'package:flutter/material.dart';

class TopAiringCard extends StatelessWidget {
  const TopAiringCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 250.0,
      child: Column(
        children: [
          Container(
            width: 140.0,
            height: 190.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx16498-C6FPmWm59CyP.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text('Attack on Titan'),
        ],
      ),
    );
  }
}
