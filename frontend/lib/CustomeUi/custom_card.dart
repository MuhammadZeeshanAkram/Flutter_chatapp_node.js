import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[200], // Optional: Add background color to avoid null background
        child: ClipOval( // Clip the SVG to the avatar shape
          child: Container(
            padding: const EdgeInsets.all(8.0), // Optional: Add padding if necessary
            child: SvgPicture.asset(
              "assets/icons/2.svg",
              color: Colors.black,
              height: 30, // Ensure the SVG has a proper size
              width: 30,
              fit: BoxFit.cover, // Ensures the SVG fits well
            ),
          ),
        ),
      ),
      title: const Text(
        "Name",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: const Row(
        children: [
          Icon(Icons.done_all),
          SizedBox(width: 5),
          Text(
            "Message here is I am Zeeshan",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      trailing: const Text("2432"),
    );
  }
}
