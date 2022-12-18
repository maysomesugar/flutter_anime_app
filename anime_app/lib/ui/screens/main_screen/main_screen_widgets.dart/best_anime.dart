import 'package:flutter/material.dart';

import '../../../colors.dart';

class BestAnime extends StatefulWidget {
  const BestAnime({super.key});

  @override
  State<BestAnime> createState() => _BestAnimeState();
}

class _BestAnimeState extends State<BestAnime> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Title(),
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (context, index) => const SizedBox(
              width: 20,
            ),
            itemBuilder: ((context, index) {
              return Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(
                  'https://cdn.shopify.com/s/files/1/1057/4964/products/Spirited-Away-Vintage-Movie-Poster-Original-29x41_600x.jpg?v=1666929679',
                  fit: BoxFit.fitWidth,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Best anime',
          style: TextStyle(
            color: Color(0xFFe4e5ed),
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(color: AppColors.blue),
          ),
        ),
      ],
    );
  }
}
