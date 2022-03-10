import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String placeholder;

  const SearchTextField({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(color: const Color(0xFF5D5D67), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
            hintText: placeholder,
            hintStyle: const TextStyle(color: Color(0xff8f8f9e), fontSize: 15),
            border: InputBorder.none),
      ),
    );
  }
}
