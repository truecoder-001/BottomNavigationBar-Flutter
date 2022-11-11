import 'package:flutter/material.dart';
class AllMovies extends StatelessWidget {
  const AllMovies({Key? key}) : super(key: key);

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
  Movies(title: 'After Earth', image: Image.asset('images/afterearth.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'DeadPool', image: Image.asset('images/deadpool.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'After Earth', image: Image.asset('images/finaldestination.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Frankenstein', image: Image.asset('images/frankenstein.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Gravity', image: Image.asset('images/gravity.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Hobbit', image: Image.asset('images/hobbit.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'IronMan', image: Image.asset('images/ironman.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Joker', image: Image.asset('images/jocker.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Pirates', image: Image.asset('images/pairates.jpg',width: double.infinity,height: 300,),),
  Movies(title: 'Riddick', image: Image.asset('images/riddick.jpg',width: double.infinity,height: 300,),),

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