import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            hintText: "Search",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
