import 'dart:io';

import 'package:bnm_flutter/components/ui/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Function() onTap;
  final Color loaderColor;
  final bool isLoading;
  final String text;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.loaderColor,
    required this.isLoading,
    required this.text,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                // color: widget.buttonColor,
                gradient: LinearGradient(
                  colors: [startColor, endColor],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.isLoading == true
                      ? Container(
                          width: 20,
                          height: 20,
                          child: Platform.isAndroid
                              ? Center(
                                  child: CircularProgressIndicator(
                                    color: widget.loaderColor,
                                    strokeWidth: 1,
                                  ),
                                )
                              : Center(
                                  child: CupertinoActivityIndicator(
                                    color: widget.loaderColor,
                                  ),
                                ),
                        )
                      : Container(
                          height: 20,
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
