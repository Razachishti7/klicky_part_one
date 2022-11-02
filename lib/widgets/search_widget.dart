import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        style: const TextStyle(fontSize: 18),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          hintText: 'Lordship Area, London',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
          suffixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: const Icon(Icons.search, color: Colors.grey),
            width: 24,
          ),
        ),
      ),
    );
  }
}
