import 'package:anywhere/shared%20components/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import '../../../shared components/widget/character_detail_widget.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "Character Detail",
        showBackButton: true,
      ),
      body: CharacterDetailWidget(
        title: "This is title",
        description: "This is description",
      ),
    );
  }
}
