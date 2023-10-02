import 'package:flutter/material.dart';

Widget circle() {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: Colors.purple[900],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: Colors.purple[900],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: Colors.purple[900],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: Colors.purple[900],
          ),
        ),
      ],
    ),
  );
}
