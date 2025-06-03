import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
   AuthTextFormField({super.key, required this.title, required this.suffix, required this.prefix});

  final controller = TextEditingController();
  final String title;
  final String suffix, prefix;


  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration());
  }
}
