import 'package:flutter/material.dart';
import 'package:gdsc_nu/models/chat_model.dart';

import '../services/api_services.dart';

class ChatProvider with ChangeNotifier {
  List<MessageModel> chatlist = [];

  List<MessageModel> get getchatList {
    return chatlist;
  }

  void addusermessage({required String msg}) {
    chatlist.add(MessageModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendmessageGetanswer(
      {required String msg, required String id}) async {
    chatlist.addAll(
      await APIService.sendMessage(
        modelid: id,
        msg: msg,
      ),
    );
    notifyListeners();
  }

  // MessageModel quote = MessageModel(msg: "", chatIndex: 0);
}
