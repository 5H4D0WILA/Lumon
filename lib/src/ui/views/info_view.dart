import 'package:anime_streaming/src/ui/components/episode_card.dart';
import 'package:anime_streaming/src/ui/themes/global.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  var showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.network(
                      'https://s4.anilist.co/file/anilistcdn/media/anime/banner/98659-u46B5RCNl9il.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 210.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6.0),
                          width: 144.0,
                          decoration: BoxDecoration(
                            color: Themes.backgroundColor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.network(
                              'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b98659-sH5z5RfMuyMr.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                'Classroom of the Elite',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text('12 Episodes'),
                                  Spacer(),
                                  Text('TV'),
                                  Spacer(),
                                  Text('COMPLETED'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SUMMER 2017',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 6.0,
                                  ),
                                  Text(
                                    'Studio Lerche',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Row(
                                children: [
                                  Text('Score'),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    '7.7',
                                    style: TextStyle(
                                      color: Themes.textHighlightColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 14.0,
                                    height: 14.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xff1687D9),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Text('Planned to Watch')
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 14.0,
                ),
                child: TabBar(
                  labelColor: Themes.textHighlightColor,
                  unselectedLabelColor: Themes.textColor,
                  indicatorColor: Themes.textHighlightColor,
                  tabs: [
                    Tab(
                      text: 'Overview',
                    ),
                    Tab(
                      text: 'Episodes',
                    ),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showFullDescription = !showFullDescription;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          margin: EdgeInsets.all(20.0),
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Color(0xff1F1D2A),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Koudo Ikusei Senior High School is a leading school with state-of-the-art facilities. The students there have the freedom to wear any hairstyle and bring any personal effects they desire. Koudo Ikusei is like a utopia, but the truth is that only the most superior students receive favorable treatment.<br><br>\n\nKiyotaka Ayanokouji is a student of D-class, which is where the school dumps its \"inferior\" students in order to ridicule them. For a certain reason, Kiyotaka was careless on his entrance examination, and was put in D-class. After meeting Suzune Horikita and Kikyou Kushida, two other students in his class, Kiyotaka's situation begins to change. <br><br>\n(Source: Anime News Network, edited)",
                                maxLines: showFullDescription ? 20 : 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12.0,
                                ),
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Center(
                                child: Icon(
                                  FontAwesomeIcons.chevronDown,
                                  size: 12.0,
                                  color: Colors.white.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500.0,
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: EpisodeCard(),
                        );
                      }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 120.0,
          alignment: Alignment.center,
          child: Container(
            width: 42.0,
            height: 42.0,
            decoration: BoxDecoration(
              color: Color(0xff916BE3),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(FontAwesomeIcons.plus),
          ),
        ),
      ),
    );
  }
}
