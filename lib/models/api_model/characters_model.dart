import 'package:anywhere/models/api_model/related_topic.dart';

class Character {
  Character({this.relatedTopics = const <RelatedTopics>[], this.selectedItem});

  List<RelatedTopics> relatedTopics = <RelatedTopics>[];
  RelatedTopics? selectedItem;

  factory Character.fromJson(dynamic json) {
    return Character(
        relatedTopics: List<RelatedTopics>.from(
            json["RelatedTopics"].map((dynamic element) {
      return RelatedTopics.fromJson(element);
    }) as Iterable<dynamic>));
  }

  Character copywith(
      {List<RelatedTopics>? relatedTopics, RelatedTopics? selectedItem}) {
    return Character(
        relatedTopics: relatedTopics ?? this.relatedTopics,
        selectedItem: selectedItem ?? this.selectedItem);
  }
}
