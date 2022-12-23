import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/best_anime.dart';
import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/main_page_header.dart';
import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/popular_anime.dart';
import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/user_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

import 'main_screen_widgets.dart/anime_carousel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          // extendBody: true,
          backgroundColor: const Color(0xFF010614),
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16),
              // color: const Color(0xFF010614),
              child: ListView(
                children: [
                  const Header(),
                  const SizedBox(
                    height: 32,
                  ),
                  const RecomendationAnimeCarousel(),
                  const SizedBox(
                    height: 8,
                  ),
                  const BestAnime(),
                  const SizedBox(
                    height: 8,
                  ),
                  PopularAnime(),
                  const SizedBox(
                    height: 66,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: MediaQuery.of(context).size.width / 2,
          child: const FractionalTranslation(
            translation: Offset(-0.5, 0),
            child: UserBottomNavigationBar(),
          ),
        )
      ],
    );
  }
}
