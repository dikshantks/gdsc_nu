import 'package:flutter/material.dart';

const kscaffhold = Color(0xff1A1F24);
const kprimary = Color(0xff4B39EF);
const kgreydark = Color(0xff57636C);
const kscaffhold2 = Color(0xff111417);
const ksecondary = Color(0xffFBAF7C);

Color scaffholdBG = const Color.fromARGB(255, 29, 38, 42);
Color cardCol = const Color.fromARGB(255, 54, 72, 79);

String loremIpsum =
    '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

String apiKey = "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";
String baseUrl = "https://api.openai.com/v1";

InputDecoration decorationOne = const InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
  border: OutlineInputBorder(),
  hintText: 'Ask question?',
  hintStyle: TextStyle(
    color: Colors.blueGrey,
    fontSize: 10.0,
    fontWeight: FontWeight.w600,
  ),
);
