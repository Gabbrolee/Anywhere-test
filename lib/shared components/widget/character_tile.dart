import 'package:flutter/material.dart';

class CharacterTiles extends StatelessWidget {
  const CharacterTiles({
    super.key,
    required this.index,
    required this.onTap,
  });

  final int index;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("${index + 1}"),
              const SizedBox(
                width: 20,
              ),
              const Text("Hello"),
            ],
          ),
        ),
      ),
    );
  }
}
