import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ///Asi es que se pueden recibir parametros a otra vista cuando hacemos Navigator.PushNamed
    final String movieArgs = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-arguments';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
                const _PosterAndTitle(),
                const _Overview(),
                const CastingCards()

              ]),
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  // const _CustomAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0) ,
        centerTitle: true,
        title: Container(
          color: Colors.black12,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          child: const Text("Nombre de la pelicula",
             style: TextStyle(fontSize: 16 ),
          ),
        ),
        background: const FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: NetworkImage("https://via.placeholder.com/500x200.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      margin: const EdgeInsets.only(top: 7, bottom:8 ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"), 
              image: NetworkImage("https://via.placeholder.com/200x300.jpg"),
              height: 200,
            ),
          ),

          const SizedBox(width: 5),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rapidos y Furiosos 9",
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.ellipsis, maxLines: 2),
                Text("En esta pelicula disque los protagonistas se van a ir al espacio, alcinan gg jaja gg jaja",
                    style: Theme.of(context).textTheme.subtitle1,
                    overflow: TextOverflow.ellipsis, maxLines: 2),
                Row(
                  children: [
                    const Icon(Icons.star_outlined, size: 15, color: Colors.grey,),
                    const SizedBox(width: 5),
                    Text("movie.voteAverage", style: Theme.of(context).textTheme.caption,)
                  ],
                )
                ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text("Cursuss mori, tanquam pius castor. Nunquam locus acipenser. "
          "Competition velums, tanquam camerarius particula.Everyone just loves the pepperiness "
          "of apple pie rubd with jasmine.Nunquam imitari rector. Try tossing the remoulade broccolis "
          "with nutty beer and salad cream, heated.",
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
