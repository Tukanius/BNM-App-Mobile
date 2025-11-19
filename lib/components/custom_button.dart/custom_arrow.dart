// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomArrow extends StatefulWidget {
  final Function() onTap;
  final Color? svgColor;
  const CustomArrow({super.key, required this.onTap, this.svgColor});

  @override
  State<CustomArrow> createState() => _CustomArrowState();
}

class _CustomArrowState extends State<CustomArrow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 12),
          SvgPicture.asset(
            Platform.isIOS
                ? 'assets/svg/back_button.svg'
                : 'assets/svg/arrow_left.svg',
            color: widget.svgColor ?? null,
          ),
        ],
      ),
    );
  }
}
