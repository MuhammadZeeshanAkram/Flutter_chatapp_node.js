import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey, // Optional: Add background color to avoid null background
              child: ClipOval(
                child: Container(
                  padding: const EdgeInsets.all(8.0), // Optional: Add padding if necessary
                  child: SvgPicture.asset(
                    "assets/icons/1.svg",
                    color: const Color.fromARGB(255, 255, 255, 255),
                    height: 38, // Ensure the SVG has a proper size
                    width: 38,
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
          ),
          const SizedBox(height: 2),  // Add some space above the Divider
          const Padding(
            padding: EdgeInsets.only(left: 80 , right: 20),
            child: Divider(
              thickness: 1,  // Set thickness here
              color: Colors.black,  // Optional: Add color to make it more prominent
               // Optional: Add indentation from the right
            ),
          ),
          const SizedBox(height: 10),  // Add some space below the Divider
        ],
      ),
    );
  }
}
