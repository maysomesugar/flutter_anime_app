import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../colors.dart';

class RecomendationAnimeCarousel extends StatelessWidget {
  const RecomendationAnimeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF010a25),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Swiper(
          itemCount: 5,
          autoplay: true,
          autoplayDelay: 10000,
          autoplayDisableOnInteraction: true,
          duration: 1000,
          curve: Curves.decelerate,
          indicatorLayout: PageIndicatorLayout.SCALE,
          // transformer: ,
          pagination: const SwiperPagination(
            alignment: Alignment.topRight,
            margin: EdgeInsets.all(10),
            builder: SwiperPagination.dots,
          ),
          loop: false,
          itemBuilder: (context, index) {
            return const _AnimeCarouselCard();
          },
        ),
      ),
    );
  }
}

class _AnimeCarouselCard extends StatelessWidget {
  const _AnimeCarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _AnimeCarouselCardImage(),
        Container(
          width: MediaQuery.of(context).size.width / 1.6,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _AnimeCarouselText(),
              _AnimeCarouselCardButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class _AnimeCarouselCardImage extends StatelessWidget {
  const _AnimeCarouselCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: Image.asset(
        'assets/images/violet_evergarden1.png',
        width: 180,
      ),
    );
  }
}

class _AnimeCarouselText extends StatelessWidget {
  const _AnimeCarouselText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _AnimeCarouselCardTitle(),
        SizedBox(
          height: 16,
        ),
        _AnimeCarouselCardSubtitle(),
      ],
    );
  }
}

class _AnimeCarouselCardButton extends StatelessWidget {
  const _AnimeCarouselCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.all(8),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF14366c),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(AppColors.blue),
      ),
      child: const Text(
        'Watch now',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _AnimeCarouselCardTitle extends StatelessWidget {
  const _AnimeCarouselCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Violet Evergardern',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    );
  }
}

class _AnimeCarouselCardSubtitle extends StatelessWidget {
  const _AnimeCarouselCardSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'After a great war, Violet Evergarden, a young exsoldier woman, works as a writer',
      maxLines: 4,
      style: TextStyle(
        color: Color(0xFF636f88),
        fontSize: 13,
      ),
    );
  }
}
