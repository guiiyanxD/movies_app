import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies_provider.dart';
import 'package:peliculas_app/screens/screens.dart';
import 'package:peliculas_app/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp( AppState() );

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ( _ ) => MoviesProvider(), lazy: false,
        ),

      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget{

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
