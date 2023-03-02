import 'package:flutter/material.dart';

import '../Constants/sizes.dart';

class NextButton extends StatelessWidget {
  final String text;
  const NextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.size10),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(Sizes.size12)),
      child: Text(text),
    );
  }
}
