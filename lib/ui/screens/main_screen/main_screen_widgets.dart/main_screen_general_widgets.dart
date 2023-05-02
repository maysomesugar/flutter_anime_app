import 'package:anime_app/ui/helper_entities/anime_titles.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';

class AnimeCarousel extends StatefulWidget {
  final String title;
  final List<AnimeTitle> anime;
  const AnimeCarousel({super.key, required this.title, required this.anime});

  @override
  State<AnimeCarousel> createState() => _AnimeCarouselState();
}

class _AnimeCarouselState extends State<AnimeCarousel> {
  final controller = ScrollController();
  final separatorWidth = 20;
  final duration = const Duration(milliseconds: 200);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Title(
          title: widget.title,
        ),
        SizedBox(
          height: 250,
          child: ListView.separated(
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemCount: widget.anime.length,
            separatorBuilder: (context, index) => SizedBox(
              width: separatorWidth.toDouble(),
            ),
            itemBuilder: (context, index) {
              final offsetCheck =
                  index == (controller.offset / (135 + separatorWidth)).round();
              return _AnimeCarouserElement(
                offsetCheck: offsetCheck,
                duration: duration,
                anime: widget.anime[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _AnimeCarouserElement extends StatelessWidget {
  final bool offsetCheck;
  final Duration duration;
  final AnimeTitle anime;
  const _AnimeCarouserElement({
    super.key,
    required this.offsetCheck,
    required this.duration,
    required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              curve: Curves.decelerate,
              duration: duration,
              height: offsetCheck ? 250 : 200,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                anime.posterUrl,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: offsetCheck ? 1.0 : 0.0,
          curve: Curves.decelerate,
          duration: duration,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 0.01,
                  blurRadius: 20,
                  offset: const Offset(0, 2),
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child: const CircleAvatar(
              child: Icon(
                Icons.play_arrow_rounded,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: TweenAnimationBuilder(
            tween: Tween(
              begin: offsetCheck ? 0.0 : 1.0,
              end: offsetCheck ? 1.0 : 0.0,
            ),
            duration: duration,
            builder: (context, value, child) {
              return AnimatedOpacity(
                opacity: value,
                curve: Curves.decelerate,
                duration: const Duration(milliseconds: 50),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.6 * value),
                          spreadRadius: 0.01 * value,
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          anime.name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          anime.episodesCount == null
                              ? '${anime.releaseYear} • ${anime.durationMinutes} minutes'
                              : '${anime.releaseYear} • ${anime.episodesCount} episodess',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  final String title;
  const _Title({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFFe4e5ed),
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'see all',
            style: TextStyle(color: AppColors.blue),
          ),
        ),
      ],
    );
  }
}
