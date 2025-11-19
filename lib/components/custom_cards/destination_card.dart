// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/destination.dart';
import 'package:bnm_flutter/src/screens/main_tabs/accommodation_tab/accommodation_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/destination_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/direction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatefulWidget {
  final Destination data;
  final bool seeAll;
  final String dataType;
  const DestinationCard({
    super.key,
    required this.data,
    required this.seeAll,
    required this.dataType,
  });

  @override
  State<DestinationCard> createState() => _DestinationCardState();
}

class _DestinationCardState extends State<DestinationCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                Text(
                  widget.data.name ?? '',
                  style: TextStyle(
                    color: darkGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                widget.seeAll == true
                    ? GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            DirectionPage.routeName,
                            arguments: DirectionPageArguments(
                              title: widget.data.name ?? '',
                              referenceName: '${widget.data.name}',
                              dataType: widget.dataType,
                              tabIndex: widget.dataType == "APP_DESTINATIONS"
                                  ? 0
                                  : 1,
                            ),
                          );
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
                SizedBox(width: 16),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: widget.data.beautifulPlaces!
                .map(
                  (item) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          widget.dataType == "APP_DESTINATIONS"
                              ? Navigator.of(context).pushNamed(
                                  DestinationDetailPage.routeName,
                                  arguments: DestinationDetailPageArguments(
                                    id: item.id!,
                                  ),
                                )
                              : Navigator.of(context).pushNamed(
                                  AccommodationDetailPage.routeName,
                                  arguments: AccommodationDetailPageArguments(
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
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover,
                                      loadingBuilder: (context, child, loadingProgress) {
                                        if (loadingProgress == null)
                                          return child;
                                        return Container(
                                          width: 160,
                                          height: 160,
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
                                      width: 160,
                                      height: 160,
                                      color: gray200,
                                      child: Icon(
                                        Icons.image,
                                        color: gray400,
                                        size: 40,
                                      ),
                                    ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                left: 0,
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: AlignmentGeometry.bottomCenter,
                                      end: AlignmentGeometry.topCenter,
                                      tileMode: TileMode.repeated,
                                      colors: [
                                        black.withOpacity(0.6),
                                        black.withOpacity(0.2),
                                      ],
                                    ),
                                  ),
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
