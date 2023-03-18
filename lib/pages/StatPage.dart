import 'package:flutter/material.dart';

class StatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset("assets/images/Statimg.png"),
          _buildListItem('Instagram', 2),
          _buildListItem('Facebook', 1),
          _buildListItem('Youtube', 4),
          _buildListItem('Spotify', 1),
          _buildListItem('Email', 0.5),
        ],
      ),
    );
  }

  Widget _buildListItem(String title, double hours) {
    final formattedHours = hours.toStringAsFixed(1);
    return ListTile(
      title: Text(title),
      subtitle: Text('$formattedHours hours'),
    );
  }
}
