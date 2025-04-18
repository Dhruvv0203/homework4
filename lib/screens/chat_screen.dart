import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatelessWidget {
  final String boardName;
  final messageController = TextEditingController();

  ChatScreen({required this.boardName});

  void sendMessage() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null && messageController.text.trim().isNotEmpty) {
      FirebaseFirestore.instance.collection('boards').doc(boardName).collection('messages').add({
        'text': messageController.text.trim(),
        'sender': user.email,
        'timestamp': FieldValue.serverTimestamp(),
      });
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(boardName)),
      body: Column(children: [
        Expanded(
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('boards').doc(boardName).collection('messages')
              .orderBy('timestamp', descending: true).snapshots(),
            builder: (_, snapshot) {
              if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
              return ListView(
                reverse: true,
                children: snapshot.data!.docs.map((doc) {
                  final data = doc.data() as Map<String, dynamic>;
                  return ListTile(
                    title: Text(data['text'] ?? ''),
                    subtitle: Text("${data['sender'] ?? ''} • ${data['timestamp']?.toDate().toString().split('.')[0] ?? ''}"),
                  );
                }).toList(),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(children: [
            Expanded(child: TextField(controller: messageController, decoration: InputDecoration(hintText: "Type message..."))),
            IconButton(icon: Icon(Icons.send), onPressed: sendMessage),
          ]),
        )
      ]),
    );
  }
}
