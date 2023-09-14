import 'package:flutter/material.dart';
import 'package:frontend/api/api_service.dart';
import 'package:frontend/context/app_start.dart';
import 'package:frontend/models/score.dart';
import 'package:frontend/widgets/score_list_item.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History"),
      ),
      body: Consumer<AppState>(
        builder: (context, appState, _) {
          final ApiService api = ApiService.getApi();
          final String token = appState.user?.token ??
              ""; // Assuming user is authenticated and token is available

          // Use FutureBuilder to fetch and display scores
          return FutureBuilder<List<Score>>(
            future: api.getScores(token), // Fetch scores here
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No scores available.'));
              } else {
                // Data is available, display it
                final scores = snapshot.data!;

                // You can use ListView.builder to display the scores using ScoreListItem
                return ListView.builder(
                  itemCount: scores.length,
                  itemBuilder: (context, index) {
                    final score = scores[index];
                    return ScoreListItem(score: score);
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
