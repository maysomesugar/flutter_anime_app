import 'package:flutter/material.dart';

import '../../../colors.dart';

class Episode extends StatelessWidget {
  final String imageUrl;
  final String episodeName;
  final int index;
  const Episode({
    super.key,
    required this.imageUrl,
    required this.episodeName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 100,
            child: GestureDetector(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Colors.white.withOpacity(0.6),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.blue,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '$episodeName ep. $index',
                    style: const TextStyle(
                      color: Colors.white,
                      // fontSize: 16,
                    ),
                  ),
                ),
                const Text(
                  'Audio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
                const Text(
                  'Runtime',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
                TextButton(
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
                    'Download',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
