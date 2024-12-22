import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Center(
        child: Text(
          text,
          style: Styles.textStyle16,
        ),
      ),
    ),
  );
}
