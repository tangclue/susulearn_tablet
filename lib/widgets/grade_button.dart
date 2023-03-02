import 'package:flutter/material.dart';

import '../Constants/sizes.dart';

class GradeButton extends StatelessWidget {
  final String text;
  const GradeButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.size10),
      decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(Sizes.size12)),
      child: Text(
        text,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
