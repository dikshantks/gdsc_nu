class MessageModel {
  final String msg;
  final int chatIndex;

  MessageModel({
    required this.msg,
    required this.chatIndex,
  });

  factory MessageModel.fromJSON(Map<String, dynamic> json) => MessageModel(
        msg: json["msg"],
        chatIndex: json["chatIndex"],
        // created: json["created"],
      );
}
