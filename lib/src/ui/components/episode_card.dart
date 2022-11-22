import 'package:flutter/material.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.0,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              height: 74.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.network(
                'https://artworks.thetvdb.com/banners/episodes/329822/6125438.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What is evil? Whatever springs from weakness.'),
                Spacer(),
                Text(
                  'Episode 1',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
