import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/buttons.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.libreFranklin(
                        fontSize: 40, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    style: GoogleFonts.libreFranklin(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  ButtonPrimary(
                    buttonText: "Register Now",
                    buttonEvent: () {},
                  ),
                  const SizedBox(height: 20),
                  const ButtonSecondary(buttonText: "Login")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
