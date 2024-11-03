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
      backgroundColor: const Color.fromARGB(255, 157, 180, 24),
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

      title: InkWell(
        onTap: () {},
        child: Container(
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
                const PopupMenuItem(
                  
                  value:"walpaper",
                  child:  Text("Walpaper"),
                ),
              ];
            },
          ),
          ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
             Align(
               alignment: Alignment.bottomCenter,
               child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width -55 ,
                    child: Card(
                      margin: const EdgeInsets.only(
                        left: 2,
                        right: 2,
                        bottom: 8,
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        textAlignVertical:TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,

                        maxLines:5,
                        minLines: 1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a message",
                          prefixIcon:IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions,
                          color: Color.fromARGB(255, 87, 163, 103),)),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file,
                              color: Color.fromARGB(255, 87, 163, 103),)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,
                              color: Color.fromARGB(255, 87, 163, 103),)),
                            ],
                          ),
                          contentPadding: const EdgeInsets.all(5),
                        ),
                      ))),
                  const Padding(
                    padding: EdgeInsets.only(bottom:8.0,right: 3),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color.fromARGB(255, 87, 163, 103),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
                  
                           ),
             ),
          
          ],
        ),
      ),
    );
  }
}