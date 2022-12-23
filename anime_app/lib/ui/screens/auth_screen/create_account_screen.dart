import 'package:anime_app/ui/screens/auth_screen/auth_screen_general_widgets.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
              _CreateAccountTopPart(),
              SignBottomPart(
                mainText: 'I already have an account',
                linkText: 'Sign In',
                buttonText: 'Next',
                dividerText: 'or Sign Up with',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CreateAccountTopPart extends StatelessWidget {
  const _CreateAccountTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _Title(),
        const _DefaulSizedBox(),
        const _Subtitle(),
        const SizedBox(
          height: 48,
        ),
        GenerateInput(
          prefixIcon: Icons.mail,
          labelText: 'Type your email',
        ),
        const _DefaulSizedBox(),
        GenerateInput(
          prefixIcon: Icons.person_rounded,
          labelText: 'Type your username',
        ),
        const _DefaulSizedBox(),
        GenerateInput(
          prefixIcon: Icons.lock,
          labelText: 'Set your password',
          suffixIcon: Icons.visibility,
        ),
        const _DefaulSizedBox(),
        GenerateInput(
          prefixIcon: Icons.lock,
          labelText: 'Confirm password',
          suffixIcon: Icons.visibility,
        ),
      ],
    );
  }
}

class _DefaulSizedBox extends StatelessWidget {
  const _DefaulSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Create an account',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 28,
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Create an account so you can use Helpers!',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        color: AppColors.grey,
      ),
    );
  }
}
