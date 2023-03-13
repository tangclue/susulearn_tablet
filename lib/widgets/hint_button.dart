import 'package:flutter/material.dart';

import '../Constants/sizes.dart';

class HintButton extends StatelessWidget {
  final String text;
  final bool isborder;
  const HintButton({super.key, required this.text, this.isborder = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size5, vertical: Sizes.size5),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                  color: isborder ? Colors.black : Colors.white,
                  width: Sizes.size2),
              borderRadius:
                  const BorderRadius.all(Radius.circular(Sizes.size5))),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
