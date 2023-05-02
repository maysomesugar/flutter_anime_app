import 'package:anime_app/ui/helper_entities/anime_titles.dart';
import 'package:anime_app/ui/screens/anime_page_screen/anime_page_screen_widgets/anime_info.dart';
import 'package:anime_app/ui/screens/anime_page_screen/anime_page_screen_widgets/episode.dart';
import 'package:anime_app/ui/screens/anime_page_screen/anime_page_screen_widgets/trailer.dart';
import 'package:flutter/material.dart';

import 'anime_page_screen_widgets/anime_page_header.dart';

class AnimePageScreen extends StatelessWidget {
  const AnimePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      backgroundColor: const Color(0xFF010614),
      body: SafeArea(
        child: ListView.separated(
          itemCount: AnimeTitles.violetEvergarden.previewsUrl.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                children: const [
                  Trailer(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: AnimeInfo(),
                  ),
                  // Episodes(),
                ],
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Episode(
                  index: index,
                  imageUrl: AnimeTitles.violetEvergarden.previewsUrl[index - 1],
                  episodeName: AnimeTitles.violetEvergarden.name,
                ),
              );
            }
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 16,
            );
          },
        ),
      ),
    );
  }
}
