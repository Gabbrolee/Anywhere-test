import 'package:anywhere/core/app_theme/app_colors.dart';
import 'package:flutter/material.dart';

class CharacterDetailWidget extends StatelessWidget {
  const CharacterDetailWidget({
    super.key,
    required this.title,
    required this.description,
    this.image,
  });

  final String title;
  final String description;
  final String? image;

  ///Todo: use image later as a placeholder

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(image: Image.network('').image)),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text(
              "title: $title",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: AppTheme.black),
            ),
            subtitle: Wrap(
              children: [
                Text(
                  "description: $description",
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppTheme.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
