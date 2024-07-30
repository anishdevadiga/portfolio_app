import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/chat/chat.dart';

class ChatController extends GetxController {
  var messages = <ChatMessage>[].obs;

  void addMessage(ChatMessage message) {
    messages.add(message);
  }
}
