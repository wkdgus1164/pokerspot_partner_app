import 'package:flutter/material.dart';

class FullScreenLoading extends StatelessWidget {
  const FullScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black.withOpacity(0.1),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
