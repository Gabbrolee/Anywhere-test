import 'package:anywhere/service/service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/api_model/characters_model.dart';

final characterProvider =
    StateNotifierProvider<CharacterProvider, Character>((ref) {
  return CharacterProvider();
});

class CharacterProvider extends StateNotifier<Character> {
  CharacterProvider() : super(Character());
  Character? characters;

  Future<void> getAllCharacters() async {
    ApiServices apiServices = ApiServices();
    final Character character = await apiServices.getCharacters();
    state = state.copywith(character.relatedTopics);
    print(character.relatedTopics);
  }

  List<String> getSplitedString( String text) {

    List<String> parts = text.split(' - ');

    if (parts.length > 1) {
      String extractedText = parts[0];
      print("Extracted text: $extractedText");
    } else {
      print("No separator found in the text");
    }
    return parts;
  }
}
