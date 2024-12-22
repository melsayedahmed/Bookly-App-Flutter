import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessages});
  final String errorMessages;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessages,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
