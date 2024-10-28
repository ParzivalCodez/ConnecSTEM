import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPrimary extends StatefulWidget {
  const ButtonPrimary(
      {super.key, required this.buttonText, required this.buttonEvent});

  final String buttonText;

  final Function buttonEvent;

  @override
  State<ButtonPrimary> createState() => _ButtonPrimaryState();
}

class _ButtonPrimaryState extends State<ButtonPrimary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromARGB(255, 10, 18, 42),
      width: double.infinity,
      child: Center(
        child: Text(
          widget.buttonText.toString(),
          style: GoogleFonts.libreFranklin(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class ButtonSecondary extends StatefulWidget {
  const ButtonSecondary({super.key, required this.buttonText});

  final String buttonText;

  @override
  State<ButtonSecondary> createState() => _ButtonSecondaryState();
}

class _ButtonSecondaryState extends State<ButtonSecondary> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(14),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: const Color.fromARGB(255, 10, 18, 42),
          ),
        ),
        child: Center(
          child: Text(
            widget.buttonText.toString(),
            style: GoogleFonts.libreFranklin(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
