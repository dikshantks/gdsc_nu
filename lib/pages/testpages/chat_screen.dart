import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import '../../components/chat_widget.dart';
import '../../constant.dart';
import '../../provider/chat_provider.dart';
import '../../provider/models_provider.dart';
import '../../services/modal_service.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isTyping = false;
  late TextEditingController textEditingController;
  late FocusNode focusNode;

  late ScrollController scrollController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    focusNode.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gptModelProvider =
        Provider.of<ModelsProvider>(context, listen: false);
    final messagesProvider = Provider.of<ChatProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("KPT"),
        actions: [
          IconButton(
            onPressed: () async {
              await Services.showbottomsheet(context: context);
            },
            icon: const Icon(
              Icons.arrow_drop_down,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: messagesProvider.chatlist.length,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                      msg: messagesProvider.chatlist[index].msg,
                      chatIndex: messagesProvider.chatlist[index].chatIndex,
                    );
                  },
                ),
              ),
              isTyping
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SpinKitThreeBounce(
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    )
                  : const SizedBox(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                            focusNode: focusNode,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.multiline,
                            decoration: decorationOne.copyWith(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                // _speechToText.isNotListening
                                //     ? _startListening
                                //     : _stopListening,
                                icon: Icon(
                                    // _speechToText.isNotListening
                                    //   ? Icons.mic_off :
                                    Icons.mic),
                              ),
                            ),
                            controller: textEditingController,
                            onSubmitted: (value) async {
                              await sendMessagechat(
                                gptModelProvider,
                                messagesProvider,
                              );
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await sendMessagechat(
                              gptModelProvider,
                              messagesProvider,
                            );
                          },
                          icon: const Icon(
                            Icons.send,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollEnd() {
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  Future<void> sendMessagechat(
    ModelsProvider gptModelProvider,
    ChatProvider chatProvider,
  ) async {
    if (textEditingController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("bruh what will i do with empty text?"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    if (isTyping) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Ayo one question at a time"),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    try {
      String msg = textEditingController.text;
      setState(() {
        isTyping = true;
        chatProvider.addusermessage(msg: msg);
        textEditingController.clear();
        focusNode.unfocus();
      });

      await chatProvider.sendmessageGetanswer(
          msg: msg, id: gptModelProvider.currentmodel);
      setState(() {});
    } catch (e) {
      log("$e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() {
        scrollEnd();
        isTyping = false;
      });
    }
  }
}
