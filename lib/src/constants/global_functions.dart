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

Widget amountOutput(String text, Color color) => Center(
      child: SizedBox(
        width: 100,
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
