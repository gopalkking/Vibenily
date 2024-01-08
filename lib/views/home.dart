import 'package:flutter/material.dart';
import 'package:vibenily/views/soundbar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Colors.yellow.withOpacity(0.5),
                Colors.yellow.withOpacity(0),
                Colors.black.withOpacity(0),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently watched",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
                        children: [
                          Icon(Icons.history),
                          SizedBox(width: 16), //space between history and icon
                          Icon(Icons.settings),
                        ],
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      AlbumCard(
                        label: "Romatic Mode",
                        image: AssetImage("assets/pic1.jpg"),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Rainy vibes",
                        image: AssetImage("assets/rainy.jpg"),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Motivation Mix",
                        image: AssetImage("assets/motiv.jpg"),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: " Album Songs",
                        image: AssetImage("assets/album.jpg"),
                      ),
                      SizedBox(width: 16),
                      AlbumCard(
                        label: "Masala  Songs",
                        image: AssetImage("assets/masala.jpg"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good afternoon",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          RowAlbumCard(
                            label: "Varanam Ayiram",
                            image: AssetImage("assets/v1000.jpg"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            label: "Evergreen songs",
                            image: AssetImage("assets/evergreen.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          RowAlbumCard(
                            label: "Harris Jayaraj",
                            image: AssetImage("assets/harris.jpg"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            label: "Ilayaraja vibes",
                            image: AssetImage("assets/ilaya.jpg"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          RowAlbumCard(
                            label: "Top 50 - India",
                            image: AssetImage("assets/top50.jpg"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          RowAlbumCard(
                            label: "Engeyum kadhal",
                            image: AssetImage("assets/vtv.jpg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // correct the text
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Based on your recent listening",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          soundbar(image: AssetImage("assets/masala.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(image: AssetImage("assets/album.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(image: AssetImage("assets/motiv.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(
                            image: AssetImage("assets/pic1.jpg"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // correct the text
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Recommended radio",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          soundbar(image: AssetImage("assets/rainy.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(image: AssetImage("assets/pic1.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(image: AssetImage("assets/pic1.jpg")),
                          SizedBox(
                            width: 16,
                          ),
                          soundbar(
                            image: AssetImage("assets/album.jpg"),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const RowAlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(9),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Text(label)
          ],
        ),
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text(label),
      ],
    );
  }
}
