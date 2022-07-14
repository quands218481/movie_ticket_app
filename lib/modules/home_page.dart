import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/config/themes/app_color.dart';
import 'package:movie_ticket_app/config/themes/text_style.dart';
import 'package:movie_ticket_app/models/movie.dart';
import 'package:movie_ticket_app/modules/category_bar.dart';
import 'package:movie_ticket_app/modules/components/header.dart';

import '../constants/assets_path.dart';
import 'components/search_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        HomeHeader(size: size),
        SearchBar(size: size),
        CategoryBar(size: size)
      ]),
    ));
  }
}
