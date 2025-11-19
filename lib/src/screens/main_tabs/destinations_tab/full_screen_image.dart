// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/main_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullScreenImageArguments {
  final List<MainImage> images;
  FullScreenImageArguments({required this.images});
}

class FullScreenImage extends StatefulWidget {
  final List<MainImage> images;
  static const routeName = "FullScreenImage";
  const FullScreenImage({super.key, required this.images});

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage>
    with AfterLayoutMixin {
  late PageController _pageController;
  int _currentIndex = 0;
  late List<String> data;

  @override
  void initState() {
    super.initState();

    data = widget.images.map((item) => item.url!).toList();

    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    print('====test====');
    print(widget.images.first.url);
    print('====test====');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          '${_currentIndex + 1} / ${data.length}',
          style: TextStyle(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: CustomArrow(
          svgColor: white,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: black,
      body: PageView.builder(
        controller: _pageController,
        itemCount: data.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Center(
            child: InteractiveViewer(
              panEnabled: true,
              minScale: 1.0,
              maxScale: 4.0,
              child: SizedBox.expand(
                child: Image.network(
                  data[index],
                  fit: BoxFit.contain,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      width: 160,
                      height: 160,
                      color: black,
                      child: Center(
                        child: Platform.isIOS
                            ? CupertinoActivityIndicator(
                                radius: 10,
                                color: white,
                              )
                            : CircularProgressIndicator(
                                value:
                                    loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                    : null,
                                color: white,
                                strokeWidth: 1,
                              ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
