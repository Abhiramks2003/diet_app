import 'package:flutter/material.dart';

class Search {
  static Container searchField() {
    return Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0)
        ]),
        child: TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(8),
              hintText: 'Search Pancake',
              hintStyle:
                  const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(1),
                child: Icon(Icons.search),
              ),
              suffixIcon: const SizedBox(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 0.1,
                        endIndent: 10,
                        indent: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.filter_alt),
                      )
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ));
  }
}
