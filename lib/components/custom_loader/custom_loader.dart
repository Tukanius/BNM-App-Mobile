import 'dart:io';

import 'package:bnm_flutter/components/ui/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoader extends StatefulWidget {
  final Color? loadColor;
  const CustomLoader({super.key, this.loadColor});

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? Center(
            child: CircularProgressIndicator(
              color: widget.loadColor ?? primary,
              strokeWidth: 1,
            ),
          )
        : Center(
            child: CupertinoActivityIndicator(
              color: widget.loadColor ?? primary,
            ),
          );
  }
}
