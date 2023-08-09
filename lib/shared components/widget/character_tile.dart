import 'package:anywhere/core/device_info.dart';
import 'package:anywhere/models/api_model/related_topic.dart';
import 'package:anywhere/provider/characters_provider.dart';
import 'package:anywhere/screens/characters/screens/character_detail_screen.dart';
import 'package:anywhere/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharacterTiles extends ConsumerWidget {
  const CharacterTiles(
      {super.key, required this.index, required this.relatedTopics});

  final int index;

  final RelatedTopics? relatedTopics;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(characterProvider.notifier).setSelectedItem(relatedTopics!);
        if (DeviceInfo.isTablet) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CharacterDetailScreen()));
        } else {}
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black45),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Text(
            Utils.getSplitedString(relatedTopics!.text!).first,
            overflow: TextOverflow.ellipsis,
            style:
                const TextStyle(fontSize: 20, overflow: TextOverflow.ellipsis,),
          ),
        ),
      ),
    );
  }
}
