import 'package:anime_streaming/src/ui/components/continue_watching_card.dart';
import 'package:anime_streaming/src/ui/components/featured_card.dart';
import 'package:anime_streaming/src/ui/components/top_airing_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FeaturedCard(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 28.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Continue watching',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'see all',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 14.0,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160.0,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: ContinueWatchingCard(),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 28.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Top airing',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'see all',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white.withOpacity(0.7),
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 14.0,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 240.0,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: TopAiringCard(),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 110.0,
        decoration: BoxDecoration(
          color: Color(0xff1F1D2A),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(FontAwesomeIcons.house),
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white.withOpacity(0.7),
            ),
            Icon(
              FontAwesomeIcons.borderAll,
              color: Colors.white.withOpacity(0.7),
            ),
            Icon(
              FontAwesomeIcons.user,
              color: Colors.white.withOpacity(0.7),
            ),
          ],
        ),
      ),
    );
  }
}
