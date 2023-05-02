import 'package:anime_app/ui/screens/anime_page_screen/anime_page_screen.dart';
import 'package:anime_app/ui/screens/auth_screen/create_account_screen.dart';
import 'package:anime_app/ui/screens/auth_screen/sign_in_screen.dart';
import 'package:anime_app/ui/screens/auth_screen/sing_up_screen.dart';
import 'package:anime_app/ui/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: AnimePageScreen(),
    );
  }
}
