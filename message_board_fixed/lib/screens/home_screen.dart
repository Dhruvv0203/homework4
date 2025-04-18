import 'package:flutter/material.dart';
import 'chat_screen.dart';
import '../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> boards = [
    {'name': 'General', 'icon': Icons.forum},
    {'name': 'CS Talk', 'icon': Icons.computer},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Message Boards")),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (_, index) {
          final board = boards[index];
          return ListTile(
            leading: Icon(board['icon']),
            title: Text(board['name']),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ChatScreen(boardName: board['name'])),
            ),
          );
        },
      ),
    );
  }
}
