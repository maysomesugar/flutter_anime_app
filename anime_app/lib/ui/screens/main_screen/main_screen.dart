import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/best_anime.dart';
import 'package:anime_app/ui/screens/main_screen/main_screen_widgets.dart/header.dart';
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
                children: const [
                  Header(),
                  SizedBox(
                    height: 32,
                  ),
                  AnimeCarousel(),
                  SizedBox(
                    height: 8,
                  ),
                  BestAnime(),
                  SizedBox(
                    height: 8,
                  ),
                  PopularAnime(),
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
