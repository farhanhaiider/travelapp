import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Message {
  final String content;
  final bool isUserMessage;

  Message(this.content, {this.isUserMessage = false});
}

class ChatController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final RxBool isChating = false.obs;
  final RxBool isSend = false.obs;
  final RxBool isContainerVisible = false.obs;
  final TextEditingController message = TextEditingController();
  final RxList<Message> messages = <Message>[].obs;

  @override
  void onClose() {
    // Dispose textEditingController
    message.dispose();
    super.onClose();
  }
}
