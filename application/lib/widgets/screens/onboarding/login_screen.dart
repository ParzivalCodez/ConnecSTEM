import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
