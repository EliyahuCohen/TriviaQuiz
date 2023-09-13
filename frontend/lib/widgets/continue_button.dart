import 'package:flutter/material.dart';

class ContinuePage extends StatelessWidget {
  const ContinuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            // Make the logic to make the API request to push to history and update the games played
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green, // Border color
                width: 2.0, // Border width
              ),
              borderRadius: BorderRadius.circular(8.0), // Border radius
              color: Colors.white, // Background color
            ),
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 20), // Padding around the text
            child: const Text(
              "Continue",
              style: TextStyle(
                color: Colors.green, // Text color
                fontSize: 18.0, // Text font size
                fontWeight: FontWeight.bold, // Text font weight
              ),
            ),
          ),
        ),
      ],
    );
  }
}
