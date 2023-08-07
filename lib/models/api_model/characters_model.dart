

import 'package:anywhere/models/api_model/related_topic.dart';

class Character {
  Character({this.relatedTopics = const <RelatedTopics>[]});

  List<RelatedTopics> relatedTopics = <RelatedTopics>[];

  factory Character.fromJson(dynamic json) {
    return Character(
        relatedTopics: List<RelatedTopics>.from(
            json["RelatedTopics"].map((dynamic element) {
      return RelatedTopics.fromJson(element);
    })));
  }

  Character copywith(List<RelatedTopics>? relatedTopics) {
   return Character(
    relatedTopics: relatedTopics?? this.relatedTopics
   );
  }
}
