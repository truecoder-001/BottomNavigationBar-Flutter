import 'package:flutter/material.dart';
class Favorite extends StatelessWidget {

  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return GridView.count(crossAxisCount: 3,
  crossAxisSpacing: 4.0,
  mainAxisSpacing: 8.0,
  children:List.generate(allMovies.length, (index) {
  return Center(
  child: SelectCard(movies: allMovies[index],),
  );
  }),
  );
  }
  }


  class Movies {
  Movies({required this.title,required this.image});
  final String title;
  final Image image;
  }
  List<Movies> allMovies = [
  Movies(title: 'DeadPool', image: Image.asset('images/deadpool.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Gravity', image: Image.asset('images/gravity.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Hobbit', image: Image.asset('images/hobbit.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Pirates', image: Image.asset('images/pairates.jpg',width: double.infinity,height: 300,),),

  ];

  class SelectCard extends StatelessWidget {
  SelectCard({required this.movies});
  final Movies movies;

  @override
  Widget build(BuildContext context) {
  // final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;

  return Card(
  color: Colors.orange,
  child: Center(child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
  Expanded(child: movies.image),
  Text(movies.title,style: TextStyle(fontWeight: FontWeight.bold), ),
  ]
  ),
  )
  );
  }
  }