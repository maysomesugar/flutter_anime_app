import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/main_screen_general_widgets.dart';
import 'package:flutter/material.dart';

import '../../../helper_entities/anime_titles.dart';

class BestAnime extends StatelessWidget {
  const BestAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimeCarousel(
      anime: animeList,
      title: 'Best anime',
    );
  }
}
