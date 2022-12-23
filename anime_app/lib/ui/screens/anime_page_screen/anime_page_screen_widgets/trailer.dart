import 'package:anime_app/ui/screens/anime_page_screen/anime_page_screen_widgets/anime_page_header.dart';
import 'package:flutter/material.dart';

class Trailer extends StatelessWidget {
  const Trailer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.network(
          'https://i.pinimg.com/564x/c1/fe/76/c1fe76718802b045cf4e23b05b95ee79.jpg',
          fit: BoxFit.cover,
        ),
        const Positioned(
          top: 0,
          child: AnimePageHeader(),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                spreadRadius: 0.01,
                blurRadius: 20,
                offset: const Offset(0, 2),
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          child: const CircleAvatar(
            maxRadius: 25,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFF010614),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Color(0xFF010614),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
