import 'package:anime_app/ui/screens/auth_screen/auth_screen_general_widgets.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _SignUpTopPart(),
              SignBottomPart(
                  mainText: 'I already have an account ',
                  linkText: 'Login',
                  buttonText: 'Create an account',
                  dividerText: 'or Sign up with')
            ],
          ),
        ),
      ),
    );
  }
}

class _SignUpTopPart extends StatelessWidget {
  const _SignUpTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Title(),
        SizedBox(
          height: 32,
        ),
        _Subtitle()
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome to Helpert!',
      style: TextStyle(
        fontSize: 50,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Here we will connect you with experts or specialists in various fields, so you can get consultation via text messages or videocall. Or be specialist to help people and earn money.',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        color: AppColors.grey,
      ),
    );
  }
}
