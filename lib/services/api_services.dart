import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:gdsc_nu/models/chat_model.dart';
import 'package:http/http.dart' as https;

import '../constant.dart';
import '../models/gpt_models.dart';

class APIService {
  // GET MODELS
  static Future<List<GptModels>> getModels() async {
    try {
      var response = await https.get(
        Uri.parse("$baseUrl/models"),
        headers: {
          "Authorization": "Bearer $apiKey",
        },
      );
      Map ans = jsonDecode(response.body);
      if (ans['error'] != null) {
        throw HttpException(ans["error"]["message"]);
      }
      List datalist = [];
      for (var i in ans["data"]) {
        datalist.add(i);
      }
      log("$ans");
      return GptModels.modelsfromsnapshot(datalist);
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }

  // SEND MESSAGES TO CHAT GPT
  static Future<List<MessageModel>> sendMessage({
    required String msg,
    required String modelid,
  }) async {
    try {
      var response = await https.post(
        Uri.parse("$baseUrl/completions"),
        headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": "application/json",
        },
        body: jsonEncode(
          {
            "model": modelid,
            "prompt": msg,
            "max_tokens": 100,
          },
        ),
      );
      Map ans = jsonDecode(response.body);
      if (ans['error'] != null) {
        throw HttpException(ans["error"]["message"]);
      }

      List<MessageModel> messages = [];

      if (ans["choices"].length > 0) {
        messages = List.generate(
          ans["choices"].length,
          (index) =>
              MessageModel(msg: ans["choices"][index]["text"], chatIndex: 1),
        );
        log("answer ris ${ans["choices"][0]["text"]}");
      }

      return messages;
    } catch (error) {
      log("error $error");
      rethrow;
    }
  }
}
