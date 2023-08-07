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
        children: [
          const Center(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 60,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "title: $title",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Wrap(
              children: [
                Text(
                  "description: $description",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
            tileColor: Colors.black,
          )
        ],
      ),
    );
  }
}
