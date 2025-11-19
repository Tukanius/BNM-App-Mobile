import 'dart:io';

import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/destination.dart';
import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_detail_page.dart';
// import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_direction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommercialCard extends StatefulWidget {
  final Destination data;
  final bool seeAll;
  final String dataType;
  const CommercialCard({
    super.key,
    required this.data,
    required this.seeAll,
    required this.dataType,
  });

  @override
  State<CommercialCard> createState() => _CommercialCardState();
}

class _CommercialCardState extends State<CommercialCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.data.description ?? '',
              style: TextStyle(
                color: darkGrey,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            widget.seeAll == true
                ? GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pushNamed(
                      //   CommercialDirectionPage.routeName,
                      //   arguments: CommercialDirectionPageArguments(
                      //     title: widget.data.name ?? '',
                      //     referenceId: '${widget.data.name}',
                      //     dataType: widget.dataType,
                      //   ),
                      // );
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                        color: primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget.data.beautifulPlaces!
                .map(
                  (item) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Navigator.of(context).pushNamed(
                            CommercialDetailPage.routeName,
                            arguments: CommercialDetailPageArguments(
                              id: item.id!,
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          child: Stack(
                            children: [
                              item.mainImage != null
                                  ? Image.network(
                                      '${item.mainImage!.url}',
                                      width: 210,
                                      height: 210,
                                      fit: BoxFit.cover,
                                      loadingBuilder: (context, child, loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return Container(
                                          width: 210,
                                          height: 210,
                                          color: gray200,
                                          child: Center(
                                            child: Platform.isIOS
                                                ? CupertinoActivityIndicator(
                                                    radius: 10,
                                                    color: primary,
                                                  )
                                                : CircularProgressIndicator(
                                                    value:
                                                        loadingProgress
                                                                .expectedTotalBytes !=
                                                            null
                                                        ? loadingProgress
                                                                  .cumulativeBytesLoaded /
                                                              loadingProgress
                                                                  .expectedTotalBytes!
                                                        : null,
                                                    color: primary,
                                                    strokeWidth: 1,
                                                  ),
                                          ),
                                        );
                                      },
                                    )
                                  : Container(
                                      width: 210,
                                      height: 210,
                                      color: gray200,
                                      child: Icon(
                                        Icons.image,
                                        color: gray400,
                                        size: 40,
                                      ),
                                    ),
                              Positioned(
                                bottom: 16,
                                right: 16,
                                left: 16,
                                child: Text(
                                  '${item.name ?? '-'}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
