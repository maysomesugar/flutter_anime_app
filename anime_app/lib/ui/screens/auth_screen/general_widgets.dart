import 'package:flutter/material.dart';

import '../../colors.dart';

class SignBottomPart extends StatelessWidget {
  final String mainText;
  final String linkText;
  final String buttonText;
  final String dividerText;
  const SignBottomPart({
    super.key,
    required this.mainText,
    required this.linkText,
    required this.buttonText,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SignButton(
          text: buttonText,
        ),
        const SizedBox(
          height: 16,
        ),
        _SignWithDivider(
          text: dividerText,
        ),
        const SizedBox(
          height: 16,
        ),
        const _SignWithAccount(),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$mainText\t\t',
                style: const TextStyle(
                  color: AppColors.grey,
                  fontSize: 14,
                ),
              ),
              TextSpan(
                text: linkText,
                style: const TextStyle(
                  color: AppColors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SignWithAccount extends StatelessWidget {
  const _SignWithAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: const Color(0xFFe6e6e6),
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            maxRadius: 35,
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/2875/2875404.png',
              width: 40,
            ),
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            border: Border.all(
              color: const Color(0xFFe6e6e6),
            ),
          ),
          child: CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.transparent,
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/3128/3128304.png',
              width: 40,
            ),
          ),
        ),
      ],
    );
  }
}

class _SignButton extends StatelessWidget {
  final String text;
  const _SignButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 9 / 10,
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.blue,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class _SignWithDivider extends StatelessWidget {
  final String text;
  const _SignWithDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Divider(
          color: AppColors.grey,
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            color: const Color(0xFFfafafa),
            child: Text(
              text,
              style: const TextStyle(
                color: AppColors.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class GenerateInput extends StatelessWidget {
  final IconData prefixIcon;
  final String labelText;
  IconData? suffixIcon;
  final bool obscureText;
  GenerateInput(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      this.suffixIcon,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFf2f2f4),
        prefixIcon: Icon(
          prefixIcon,
          color: AppColors.blue,
        ),
        suffixIcon: Icon(
          suffixIcon,
          color: AppColors.blue,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.grey,
          fontSize: 14,
        ),
        floatingLabelStyle: const TextStyle(
          color: AppColors.blue,
          fontSize: 14,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blue,
            width: 1.3,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot the password?',
          style: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
