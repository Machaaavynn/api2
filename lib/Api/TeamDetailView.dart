import 'package:api2/Api/PostModel.dart';
import 'package:flutter/material.dart';

class TeamDetailView extends StatelessWidget {
  final PostModel post;

  TeamDetailView({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.strTeam),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.network(post.strBadge, width: 100, height: 100)),
            SizedBox(height: 16),
            Text(post.strTeam, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(post.strDescriptionEN, style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Di Buat Tahun: ${post.intFormedYear}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Stadion: ${post.strStadium}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text('Lokasi: ${post.strLocation}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Main Di Liga: ${post.strLeague}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
