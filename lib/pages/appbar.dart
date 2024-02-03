import 'package:flutter/material.dart';

class Appbar {
  static AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text(
        "Breakfast",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            height: 4,
            width: 4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          )),
      actions: [
        GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const Icon(Icons.more_horiz_rounded),
            )),
      ],
    );
  }
}
