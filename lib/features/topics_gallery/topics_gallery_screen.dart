import 'package:flutter/material.dart';

import '../topics_screen/enums/topics_enum.dart';

class TopicsGalleryScreen extends StatefulWidget {
  final List<TopicsEnum> topics;
  const TopicsGalleryScreen({super.key, required this.topics});

  @override
  State<TopicsGalleryScreen> createState() => _TopicsGalleryScreenState();
}

class _TopicsGalleryScreenState extends State<TopicsGalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //! company info code implementation
          //?___________________________________
          ...widget.topics.map((e) => e.getTopicDesignWidget)
        ],
      ),
    );
  }
}
