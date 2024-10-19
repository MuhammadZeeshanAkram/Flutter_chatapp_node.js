import 'package:flutter/material.dart';
import 'package:frontend/CustomeUi/custom_card.dart';
import 'package:frontend/Model/chat_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chatList = [
    ChatModel(
      name:"software sec b",
      isGroup:true,
      currentMessage:"Hello bhaijan xdd",
      time:"4:45",
      icon:"1.svg",
      ),
    ChatModel(
      name:"Akram",
      isGroup:false,
      currentMessage:"Hello akram bhai",
      time:"7:67",
      icon:"2.svg",
      ),
    ChatModel(
      name:"farzam",
      isGroup:false,
      currentMessage:"Hello farzam shapatar",
      time:"5:00",
      icon:"2.svg",
      ),
    ChatModel(
      name:"fyp group",
      isGroup:true,
      currentMessage:"Hello sir jee",
      time:"4:67",
      icon:"1.svg",
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary, // Set secondary color for the button
        child: const Icon(Icons.chat, color: Colors.white), // Optionally set icon color to white
      ),
      body: ListView.builder(
        itemCount:chatList.length,
        itemBuilder: (context,index)=>CustomCard(
          chatModel:chatList[index],
        ),

        
         
      ),
    );
  }
}
