import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;

  Editor({required this.label, required this.hint, required this.icon, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,

        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
            icon: icon != null ? Icon(icon) : null,
            labelText: this.label,
            hintText: this.hint),
      ),
    );
  }
}
