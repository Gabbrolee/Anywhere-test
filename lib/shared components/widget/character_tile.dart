import 'package:anywhere/models/api_model/related_topic.dart';
import 'package:anywhere/utils.dart';
import 'package:flutter/material.dart';

class CharacterTiles extends StatelessWidget {
  const CharacterTiles({
    super.key,
    required this.index,
    required this.onTap,
    required this.relatedTopics
  });

  final int index;
  final Function() onTap;
  final RelatedTopics? relatedTopics;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: .0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             const SizedBox(
                width: 20,
              ),
              Text(
                Utils.getSplitedString(relatedTopics!.text!).first,
                style:const TextStyle(fontSize: 20, overflow: TextOverflow.clip),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
