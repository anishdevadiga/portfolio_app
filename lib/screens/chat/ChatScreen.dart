import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/screens/chat/chat.dart';
import 'package:portfolio_app/screens/chat/chatwidget.dart';
import 'package:portfolio_app/controller/chatcontroller.dart';

class ChatScreen extends StatelessWidget {
  final ChatController _chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Messages',style:GoogleFonts.amaranth(color:Colors.black,fontSize: 22,fontWeight: FontWeight.normal)),
      ),
      body: Obx(
            () => ListView.builder(
          itemCount: _chatController.messages.length,
          itemBuilder: (context, index) {
            return ChatMessageWidget(message: _chatController.messages[index]);
          },
        ),
      ),
    );
  }
}
