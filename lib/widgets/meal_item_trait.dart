import 'package:flutter/material.dart';

class MealItemTrait extends StatelessWidget {
  // Fixed "extendes" typo
  const MealItemTrait(
      {super.key,
      required this.icon,
      required this.label}); // Constructor name corrected

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ), // Fixed by passing the required "icon" argument
        const SizedBox(width: 6), // Added width to SizedBox for spacing
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          ),
        ), // Fixed by passing the required "label" argument
      ],
    );
  }
}
