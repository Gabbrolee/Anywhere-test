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
    state = state.copywith(relatedTopics: character.relatedTopics);
   
  }

  void setSelectedItem(int index) {
    state = state.copywith(selectedItem: state.relatedTopics[index]);
  }
}
