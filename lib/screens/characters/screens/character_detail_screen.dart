import 'package:anywhere/shared%20components/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/device_info.dart';
import '../../../provider/characters_provider.dart';
import '../../../shared components/widget/character_detail_widget.dart';
import '../../../utils.dart';

class CharacterDetailScreen extends ConsumerWidget {
  const CharacterDetailScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: "Character Detail",
        showBackButton:DeviceInfo.isTablet? true:false,
      ),
      body:  CharacterDetailWidget(
        title: Utils.getSplitedString(ref.watch(characterProvider).selectedItem!.text!).first,
        description:  Utils.getSplitedString(ref.watch(characterProvider).selectedItem!.text!).last,
      ),
    );
  }
}
