import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String textButton;
  const SectionTitle({
    super.key,
    required this.title,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          TextButton(onPressed: () {}, child: Text(textButton)),
        ],
      ),
    );
  }
}
