import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RulesPage extends StatelessWidget {
  const RulesPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Rules'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Lottie.asset("lib/assets/law.json", width: 250),
            Text(
              // Replace this with your game rules or any long text.
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Praesent eget ex at urna tincidunt blandit a a elit. '
              'Nunc pharetra, odio at hendrerit lacinia, velit ex mollis massa, '
              'sed varius dolor neque eu ex. Sed consectetur ac nisi a scelerisque. '
              'Suspendisse potenti. Vivamus non neque in felis lacinia vestibulum. '
              'Proin eget metus vel urna consectetur ultricies. Donec in volutpat mi. '
              'Curabitur tincidunt sed odio eget pharetra. Duis semper vitae libero sit '
              'amet interdum. Integer convallis quam vel dolor ultricies, eget euismod '
              'nibh ultrices. Phasellus sed felis in nisl vehicula luctus. Suspendisse '
              'egestas scelerisque hendrerit. In vel libero eu arcu sollicitudin bibendum. '
              'Proin semper orci nec nunc euismod, eu efficitur nisi bibendum. '
              'Vestibulum nec lorem eu justo ultricies vehicula. Sed vehicula iaculis nunc, '
              'et hendrerit felis tempus in. Duis efficitur eget dolor eu sagittis. '
              'Nulla facilisi. Suspendisse non tristique augue. Duis suscipit massa nec sapien '
              'venenatis, ut tincidunt turpis varius. Integer euismod, tortor eu vestibulum '
              'pulvinar, tortor lorem mattis nisi, id venenatis ipsum neque eget justo.'
              'Curabitur non euismod sapien, et cursus dui. ',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 3.0, // Adjust the letter spacing as needed.
              ),
            ),
          ],
        ),
      ),
    );
  }
}
