import 'package:anywhere/screens/characters/screens/character_detail_screen.dart';
import 'package:flutter/material.dart';
import '../../../shared components/widget/character_tile.dart';
import '../../../shared components/widget/custom_appbar.dart';

class CharactersListScreen extends StatelessWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Characters List Screen",
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) => CharacterTiles(
            index: index,
            onTap: () {
              print("$index");
              /// Todo: navigate with Go router
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CharacterDetailScreen()));
            }),
      ),
    );
  }
}
