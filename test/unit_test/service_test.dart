import 'dart:convert';

import 'package:anywhere/models/api_model/characters_model.dart';
import 'package:anywhere/models/api_model/related_topic.dart';
import 'package:anywhere/service/charactor_sevices.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart'; // For creating mock objects
import 'package:dio/dio.dart';
import 'package:anywhere/service/service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert' as convert;

class MockDio extends Mock implements Dio {}

void main() {
  group('ApiService', () {
    dotenv.load(fileName: '.env');
    CharacterServices characterServices = CharacterServices();

    //Arrange
    test('getCharacters returns Character object', () async {
      when(characterServices.getCharacters())
          .thenAnswer((_) async => Character(relatedTopics: []));

      // Act
      final result = await characterServices.getCharacters();

      // Assert
      expect(result, Character(relatedTopics: []));
    });

    test(
        'fetchData throws an exception if the Dio call completes with an error',
        () async {
      // Arrange
      when(characterServices.getCharacters()).thenAnswer((_) async {
        List<RelatedTopics>? relatedTopics;
        return Character(relatedTopics: relatedTopics!);
      });

      // Act and Assert
      expect(characterServices.getCharacters(), throwsException);
    });
  });
}
