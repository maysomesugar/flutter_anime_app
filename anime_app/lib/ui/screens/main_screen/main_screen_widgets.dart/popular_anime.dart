import 'dart:math';

import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/main_screen_general_widgets.dart';
import 'package:flutter/material.dart';

import '../../../helper_entities/anime_titles.dart';

class PopularAnime extends StatelessWidget {
  const PopularAnime({super.key});

  @override
  Widget build(BuildContext context) {
    animeList.shuffle(Random(12));
    return AnimeCarousel(
      anime: animeList,
      title: 'Popular anime',
    );
  }
}
