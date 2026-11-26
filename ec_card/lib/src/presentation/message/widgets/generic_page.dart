import 'package:ec_card_app/src/data/messages/model/message_body.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';

class GenericPage extends StatelessWidget {
  const GenericPage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final MessageBody message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: primaryCyan,
        title: Text(message.title),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Container(
            alignment: Alignment.topCenter,
            height: double.infinity,
            child: Text(
              parse(message.body).documentElement!.text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
