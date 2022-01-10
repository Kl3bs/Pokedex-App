import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: TextFormField(
        decoration: InputDecoration(
          // icon: Icon(Icons.search),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          prefixIcon: Icon(Icons.search),
          label: Text("Search"),
        ),
      ),
    );
  }
}
