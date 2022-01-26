import 'package:flutter/material.dart';
import 'package:movieku/model/movie.dart';

class DetailMovie extends StatelessWidget{
  final Movie movie;

  DetailMovie({required this.movie});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff032541),
              leading: IconButton(
                icon: Icon(Icons.arrow_back), onPressed: () { Navigator.pop(context, false); },
              ),
              title: const Text('Detail Movie'),
            ),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.network(movie.poster,),
                      ),
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 16.0, right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                 Text(
                                  movie.title,
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text(
                                  movie.tagline,
                                  style: const TextStyle(
                                      fontStyle: FontStyle.italic
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    movie.rating,
                                    style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xff032541),
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(12.0),
                                ),
                                TextLabel(label: 'Release Date:'),
                                TextValue(value: movie.releaseDate),
                                TextLabel(label: 'Genre:'),
                                TextValue(value: movie.genre),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    bottom: const TabBar(
                      indicatorColor: Color(0xff032541),
                      labelColor: Color(0xff032541),
                      tabs: [
                        Tab(
                          text: 'Info',
                        ),
                        Tab(
                          text: 'Review',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // first tab bar view widget
                      Container(
                        padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextLabel(label: 'Status:'),
                            TextValue(value: movie.status),
                            TextLabel(label: 'Homepage:'),
                            TextValue(value: movie.homepage),
                            TextLabel(label: 'Country:'),
                            TextValue(value: movie.country),
                            TextLabel(label: 'Production:'),
                            TextValue(value: movie.production),
                            TextLabel(label: 'Overview:'),
                            TextValue(value: movie.overview),
                          ],
                        ),
                      ),

                      // second tab bar viiew widget
                      Container(
                        color: Colors.transparent,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: movie.reviews.map((review){
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 16.0),
                                            child:  Icon(Icons.person),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                        flex: 5,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Text(review.author, style: TextStyle(fontWeight: FontWeight.bold),)
                                            )
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0),
                                            child: Text(review.content)
                                        ))

                                  ],
                                )
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          floatingActionButton: FavoriteButton(),
        ),
    );

  }

}

class TextLabel extends StatelessWidget{
  final String label;
  TextLabel({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TextValue extends StatelessWidget{
  final String value;
  TextValue({required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.0),
      child: Text(
        value,
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      backgroundColor: Colors.redAccent,
      child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border),
    );
  }
}