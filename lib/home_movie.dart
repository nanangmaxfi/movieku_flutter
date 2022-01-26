import 'package:flutter/material.dart';
import 'package:movieku/detail_movie.dart';
import 'package:movieku/model/movie.dart';

class HomeMovie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff032541),
          title: Text('Movie'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            final Movie movie = movieList[index];
            return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailMovie(movie: movie,);
                  }));
                },
                child:Card(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.network(movie.poster,),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  movie.title,
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(movie.releaseDate),
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                )
            );
          },
      itemCount: movieList.length,)
    );
  }

}