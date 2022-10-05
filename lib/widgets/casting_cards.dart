import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      // color: Colors.deepOrange,
      margin: const EdgeInsets.only(bottom: 30, top: 5),
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: 10,
        // padding: const EdgeInsets.all(0),
        itemBuilder: ( _, int index){
          return _CastingCards();
        }
      ),
    );
  }
}

class _CastingCards extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.lightGreenAccent,
      width: 140,
      height: 150,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/150x300.jpg"),
              fit: BoxFit.cover,
              height: 150,
              width: 110,
            ),
          ),
          const SizedBox(height: 5,),
          const Text("Actor.name Festus, teres burguss una magicae de fortis, pius habena.",
          maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
