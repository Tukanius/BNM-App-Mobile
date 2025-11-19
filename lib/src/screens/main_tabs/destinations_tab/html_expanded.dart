import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HtmlExpandableText extends StatefulWidget {
  final String htmlText;
  final int trimLines;

  const HtmlExpandableText({
    Key? key,
    required this.htmlText,
    this.trimLines = 3,
  }) : super(key: key);

  @override
  State<HtmlExpandableText> createState() => _HtmlExpandableTextState();
}

class _HtmlExpandableTextState extends State<HtmlExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: ConstrainedBox(
              constraints: isExpanded
                  ? const BoxConstraints()
                  : BoxConstraints(
                      maxHeight: widget.trimLines * 22.0,
                    ), // мөрийн тоо
              child: HtmlWidget(
                widget.htmlText,
                renderMode: RenderMode.column,
                textStyle: const TextStyle(fontSize: 14),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        GestureDetector(
          onTap: () => setState(() => isExpanded = !isExpanded),
          child: Text(
            isExpanded ? 'See less' : 'See more',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
