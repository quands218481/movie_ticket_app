import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/config/themes/app_color.dart';
import 'package:movie_ticket_app/config/themes/text_style.dart';
import 'package:movie_ticket_app/models/movie.dart';

class FilmSlider extends StatelessWidget {
  const FilmSlider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies.map((e) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: kIsWeb
                            ? Image.network(e.backgroundImg).image
                            : Image.asset(e.backgroundImg).image)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          GradientPalette.black1,
                          GradientPalette.black2
                        ])),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    // width: size.width,
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 8, bottom: 8),
                    child: Text(
                      e.title,
                      style: TxtStyle.heading2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8, bottom: 16),
                    child: Row(children: const [
                      FilmStar(),
                      FilmStar(),
                      FilmStar(),
                      FilmStar(),
                      FilmStar(),
                      Text(
                        '(5.0)',
                        style: TxtStyle.heading4,
                      )
                    ]),
                  )
                ]),
              ),
            ],
          );
        }).toList(),
        options: CarouselOptions(
            autoPlay: true, enlargeCenterPage: true, viewportFraction: 0.75));
  }
}

class FilmStar extends StatelessWidget {
  const FilmStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 4),
      child: FaIcon(FontAwesomeIcons.solidStar, color: DarkTheme.yellow),
    );
  }
}
