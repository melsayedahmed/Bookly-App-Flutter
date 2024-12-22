import 'package:flutter/material.dart';

class CustomLoadingIndictor extends StatelessWidget {
  const CustomLoadingIndictor({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
