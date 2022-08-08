import 'package:flutter/material.dart';

Widget textOutput(String text, Color color) => Center(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
