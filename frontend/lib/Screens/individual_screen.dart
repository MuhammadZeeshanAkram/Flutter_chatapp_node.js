import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/Model/chat_model.dart';

class IndividualPage extends StatefulWidget {
   const IndividualPage({super.key,required this.chatModel});
   final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
        backgroundColor: Theme.of(context).colorScheme.primary, 
        leadingWidth: 90,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 24,
               
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
               CircleAvatar(
                 radius: 20,
                  backgroundColor: Colors.blueGrey,
                 child: Container(
                  padding: const EdgeInsets.all(8.0), // Optional: Add padding if necessary
                  child: SvgPicture.asset(
                    widget.chatModel.isGroup ? "assets/icons/1.svg" : "assets/icons/2.svg",
                    color: const Color.fromARGB(255, 255, 255, 255),
                    height: 38, // Ensure the SVG has a proper size
                    width: 38,
                    fit: BoxFit.cover, // Ensures the SVG fits well
                  ),
                ),
                  
                ),
            ],
          ),
        ),

      title: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,  // Align the text to start (left-aligned)
          children: [
            Text(
        widget.chatModel.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Colors.white,
        ),
            ),
            Text(
        "Last seen today at:12:00pm",
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey[600],
        ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call),
          color: Colors.white,
        ),
       PopupMenuButton <String>(
            
             icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (value) {
              print(value);

            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(value: "View Contact", child: Text("View Contact")),
                const PopupMenuItem(value: "Media, Links & Docs", child: Text("Media, Links & Docs")),
                const PopupMenuItem(value: "Search", child: Text("Search")),
                const PopupMenuItem(value: "Starred messages", child: Text("Starred messages")),
                const PopupMenuItem(value: "Mute Notifications", child: Text("Mute Notifications")),
                PopupMenuItem(
                  onTap: () {},
                  child: const Text("Walpaper"),
                ),
              ];
            },
          ),],
      ),
    );
  }
}