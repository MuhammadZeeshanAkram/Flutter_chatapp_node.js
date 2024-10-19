import 'package:flutter/material.dart';
import 'package:frontend/CustomeUi/custom_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary, // Set secondary color for the button
        child: const Icon(Icons.chat, color: Colors.white), // Optionally set icon color to white
      ),
      body: ListView(
        children: const [
          CustomCard()
        ],
      ),
    );
  }
}
