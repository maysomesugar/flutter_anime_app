import 'package:flutter/material.dart';

class AnimeInfo extends StatelessWidget {
  const AnimeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const _Info(),
          _Ganres(),
          const _Synopsis(),
        ],
      ),
    );
  }
}

class _Synopsis extends StatelessWidget {
  const _Synopsis({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Synopsis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'see all',
                ),
              ),
            ],
          ),
          const Text(
            'There was a machine invented as a prototype for the typewriter, called Auto Memory Dolls. It was originally made by Professor Orlando, the authority on letterpress printing and a researcher of mechanical dolls. His wife, Molly, was a novelist, but she became blind and could not write anymore. Dr Orlando then created the first Auto-Memories Doll for her, meant to register everything said by a human voice. In the present time, the term refers to the industry of writing for others. The story follows Violet Evergarden\'s journey of reintegrating back into society after the war is over as she is no longer a soldier, and her search for her life\'s purpose in order to understand the last words her mentor and guardian, Major Gilbert, had said to her: "I love you."',
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Violet Evergarden',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
          _Raiting(),
        ],
      ),
    );
  }
}

class _Raiting extends StatelessWidget {
  const _Raiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '4.5',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _Ganres extends StatelessWidget {
  final animeGanresList = ['drama', 'adventure', 'animation'];
  _Ganres({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              side: MaterialStatePropertyAll(
                BorderSide(
                  color: Colors.white,
                ),
              ),
              backgroundColor: MaterialStatePropertyAll(
                Color(0xFF010a27),
              ),
            ),
            child: Text(
              animeGanresList[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}
