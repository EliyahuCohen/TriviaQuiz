import 'package:flutter/material.dart';
import 'package:frontend/models/score.dart';

class ScoreListItem extends StatelessWidget {
  final Score score;

  const ScoreListItem({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.amber[200], // Background color
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(score.userName,
                  style: const TextStyle(
                    fontSize: 16, // Adjust font size as needed
                    fontWeight: FontWeight.w600, // Semi-bold
                    color: Colors.black, // Text color
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${score.score}/5",
                    style: const TextStyle(
                      fontSize: 16, // Adjust font size as needed
                    ),
                  ),
                  // Add your appropriate icon here
                  const Icon(
                    Icons.star, // Replace with your desired icon
                    color: Colors.white, // Icon color
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
