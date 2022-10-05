import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.deepOrange,
      margin: EdgeInsets.only(bottom: 30),
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: 10,
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
      color: Colors.lightGreenAccent,
      width: 150,
      height: 170,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/150x160.jpg"),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
