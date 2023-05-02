// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TweenTest extends StatefulWidget {
  bool togle;
  TweenTest({
    Key? key,
    required this.togle,
  }) : super(key: key);

  @override
  State<TweenTest> createState() => _TweenTestState();
}

class _TweenTestState extends State<TweenTest> {
  int temp = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween(
          begin: widget.togle ? 0.0 : 1.0,
          end: widget.togle ? 1.0 : 0.0,
        ),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          temp += 1;
          print(temp.toString() + ' ' + value.toString());
          return AnimatedOpacity(
            opacity: value,
            duration: const Duration(seconds: 1),
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: widget.togle ? Colors.green : Colors.red,
              height: widget.togle ? 200 : 50,
              width: widget.togle ? 200 : 50,
            ),
          );
        },
      ),
    );
  }
}
