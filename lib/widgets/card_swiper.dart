import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.55,
      width: double.infinity,
      // color: Colors.deepOrange,
      child: Swiper(
        // autoplay: true,
        itemCount: 5,
        layout: SwiperLayout.STACK,
        itemHeight: size.height * 0.4,
        itemWidth: size.width * 0.6,
        itemBuilder: ( _ , int index){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/detail', arguments: 'arguments');
            },

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage("assets/no-image.jpg"),
                image: NetworkImage("https://via.placeholder.com/300x400.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
