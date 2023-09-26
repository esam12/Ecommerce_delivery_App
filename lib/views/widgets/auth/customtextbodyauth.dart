import 'package:delivery/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;
  const CustomTextBodyAuth({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontSize: 14, color: AppColor.grey),
        textAlign: TextAlign.center,
      ),
    );
  }
}
