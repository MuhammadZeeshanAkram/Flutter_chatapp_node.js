import 'package:flutter/material.dart';
import 'package:frontend/pages/chat_pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ingenious Digital System", style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary, // Use primary color for AppBar
        actions: [
          
          IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.white),
          PopupMenuButton <String>(
            
             icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              print(value);

            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(value: "New group", child: Text("New group")),
                const PopupMenuItem(value: "New broadcast", child: Text("New broadcast")),
                const PopupMenuItem(value: "WhatsApp Web", child: Text("WhatsApp Web")),
                const PopupMenuItem(value: "Starred messages", child: Text("Starred messages")),
                const PopupMenuItem(value: "Settings", child: Text("Settings")),
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Invite a friend"),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white, // Secondary color for tab indicator
          labelColor: Theme.of(context).colorScheme.onPrimary, // Text color on primary (for selected tab)
          unselectedLabelColor: Colors.white70, // Unselected tab text color
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text("CAMERA"),
          ChatPage(),
          Text("STATUS"),
          Text("CALLS"),
        ],
      ),
    );
  }
}
