import 'package:flutter/material.dart';

class ContinueWatchingCard extends StatelessWidget {
  const ContinueWatchingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.0,
      width: 180.0,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                'https://artworks.thetvdb.com/banners/episodes/329822/6125438.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            'Classroom of the Elite',
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          Text(
            'Season 2 - Episode 1',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }
}
