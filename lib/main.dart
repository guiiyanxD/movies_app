import 'package:flutter/material.dart';
import 'package:peliculas_app/screens/screens.dart';
import 'package:peliculas_app/theme/app_theme.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicacion de peliculas',
      // initialRoute: '/home',
      initialRoute: '/home',
      routes: {
          '/home': ( _ ) =>  const HomeScreen(),
          '/detail': ( _ ) =>  const DetailsScreen(),
      },
      theme: AppTheme.lightTheme,
    );
  }
}