// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            'View All',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
