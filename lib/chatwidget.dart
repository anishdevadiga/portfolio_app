import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/chat.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessage message;

  ChatMessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(message.email, style: TextStyle(color: Colors.grey)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message.date, style: GoogleFonts.amaranth(color:Colors.black,fontSize: 22,fontWeight: FontWeight.normal)),
              Text(message.time, style: GoogleFonts.amaranth(color:Colors.black,fontSize: 22,fontWeight: FontWeight.normal)),
            ],
          ),
        ],
      ),
    );
  }
}

