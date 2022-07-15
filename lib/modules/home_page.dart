import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/config/themes/app_color.dart';
import 'package:movie_ticket_app/config/themes/text_style.dart';
import 'package:movie_ticket_app/models/movie.dart';
import 'package:movie_ticket_app/modules/category_bar.dart';
import 'package:movie_ticket_app/modules/components/filmSlider.dart';
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
        // physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: SizedBox(
            width: kIsWeb ? 900 : null,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              HomeHeader(size: size),
              SearchBar(size: size),
              CategoryBar(size: size),
              buildTitle('Now Playing'),
              FilmSlider(size: size),
              buildTitle('Coming soon'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                    children: movies
                        .map((e) => Builder(builder: (context) {
                              return Expanded(
                                  child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Image.asset(e.posterImg),
                              ));
                            }))
                        .toList()),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(content, style: TxtStyle.heading2),
    );
  }
}
