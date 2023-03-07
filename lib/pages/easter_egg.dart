import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FunPage extends StatefulWidget {
  const FunPage({super.key});

  @override
  State<FunPage> createState() => _FunPageState();
}

class _FunPageState extends State<FunPage> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 500,
          width: 500,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
