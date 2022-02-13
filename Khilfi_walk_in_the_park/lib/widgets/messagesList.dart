import 'package:walk_in_the_park/models/chat.dart';

// List<ChatMessage> messagelist(){
// var userID=0;
// switch (userID) {
//   case userID:

//     break;

// }
// }

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Harun", messageType: "receiver"),
  ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
  ChatMessage(
      messageContent: "Hey Doctor, I am doing fine.", messageType: "sender"),
  ChatMessage(messageContent: "Thats great to hear", messageType: "receiver"),
  ChatMessage(
      messageContent: "You have drastically slowed your stage 2 parkinsons",
      messageType: "receiver"),
];
