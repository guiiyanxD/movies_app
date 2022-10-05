import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 249,
      // color: Colors.deepOrangeAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 9),
            child: Text("Populares", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ( _, int index) {
                return _MovieSilder();
              }
            )
          ),
        ],
      ),
    );
  }
}

class _MovieSilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 130,
      // padding: EdgeInsets.only(bottom: 1),
      color: Colors.amberAccent,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
           GestureDetector(
             onTap: () => Navigator.pushNamed(context, '/detail', arguments: 'arguments'),
             child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
               child: const FadeInImage(
                placeholder: AssetImage("assets/no-image.jpg"),
                image: NetworkImage("https://via.placeholder.com/300x400.jpg"),
                fit: BoxFit.cover,
                 height: 190,
                 width: 131,
              ),
             ),
           ),
          const Text("Avengers 3 y la venganza de los electroalces pop",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
