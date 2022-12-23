import 'package:anime_app/ui/colors.dart';
import 'package:flutter/material.dart';

import 'auth_screen_general_widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _SignInTopPart(),
                SignBottomPart(
                  mainText: 'I don`t have an account ',
                  linkText: 'Sign up',
                  buttonText: 'Sign in',
                  dividerText: 'or Sign with',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SignInTopPart extends StatelessWidget {
  const _SignInTopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const _Title(),
        const _DefaultSizedBox(),
        const _Subtitle(),
        const _DefaultSizedBox(),
        GenerateInput(
          labelText: 'Type your email or username',
          prefixIcon: Icons.face,
        ),
        const _DefaultSizedBox(),
        GenerateInput(
          labelText: 'Type your email or username',
          prefixIcon: Icons.lock,
          obscureText: true,
        ),
        const SizedBox(
          height: 8,
        ),
        const ForgotPasswordButton(),
      ],
    );
  }
}

class _DefaultSizedBox extends StatelessWidget {
  const _DefaultSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 32,
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome back!',
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
      'We\'re happy to see. You can Login and continue consulting your problem or read some tips.',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 15,
        color: AppColors.grey,
      ),
    );
  }
}
