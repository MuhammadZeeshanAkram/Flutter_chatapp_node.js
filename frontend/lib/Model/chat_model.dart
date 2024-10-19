class ChatModel {
  String name;
  bool isGroup;
  String currentMessage;  // Define currentMessage
  String time;
  String icon;

  ChatModel({
    required this.name,
    required this.isGroup,
    required this.currentMessage,  // Add currentMessage as a required parameter
    required this.time,
    required this.icon,
  });
}
