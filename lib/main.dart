import 'package:flutter/material.dart';
import 'package:movie_ticket_app/config/themes/app_color.dart';
import 'package:movie_ticket_app/modules/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'montserrat',
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: DarkTheme.white,
                displayColor: DarkTheme.white,
              )),
      home: const MyHomePage(),
    );
  }
}
