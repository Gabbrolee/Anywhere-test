import 'package:anywhere/provider/characters_provider.dart';
import 'package:anywhere/screens/characters/screens/character_detail_screen.dart';
import 'package:anywhere/shared%20components/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/size_config.dart';
import '../../../shared components/widget/character_tile.dart';
import '../../../shared components/widget/custom_appbar.dart';

class CharactersListScreen extends ConsumerWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
      return Scaffold(
      appBar: const CustomAppBar(
        title: "Characters List Screen",
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Expanded(
              flex: 4,
              child:
                  Align(alignment: Alignment.center, child: CustomTextField())),
          Expanded(
            flex: DeviceInfo.deviceOrientation(context) ? 40 : 15,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: ref.watch(characterProvider).relatedTopics.length,
              itemBuilder: (BuildContext context, int index) => CharacterTiles(
                  index: index,
                  relatedTopics:  ref.watch(characterProvider).relatedTopics[index] ,
                  onTap: !DeviceInfo.isTablet
                      ? () {}
                      : () {
                          /// Todo: navigate with Go router
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CharacterDetailScreen()));
                        }),
            ),
          ),
        ],
      ),
    );
  }
}


