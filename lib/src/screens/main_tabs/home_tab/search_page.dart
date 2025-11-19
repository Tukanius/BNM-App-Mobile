import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/components/ui/form_textfield_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchPageArguments {
  final TextEditingController controller;
  SearchPageArguments({required this.controller});
}

class SearchPage extends StatefulWidget {
  final TextEditingController controller;

  static const routeName = "SearchPage";
  const SearchPage({super.key, required this.controller});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: grayAccent,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: mediaQuery.padding.top + 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SvgPicture.asset('assets/svg/arrow_left.svg'),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: FormTextfieldSearch(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      dense: true,
                      color: gray50,
                      name: 'search',
                      hintTextStyle: TextStyle(
                        color: gray400,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      hintText: 'Search',
                      colortext: zeroBlack,
                      controller: widget.controller,
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 14),
                          SvgPicture.asset(
                            'assets/svg/search.svg',
                            height: 16,
                            width: 16,
                          ),
                          SizedBox(width: 12),
                        ],
                      ),
                      suffixContraints: BoxConstraints(maxHeight: 20),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: 8),
                          SvgPicture.asset('assets/svg/close.svg'),
                          SizedBox(width: 8),
                        ],
                      ),
                      // validator: FormBuilderValidators.compose([
                      //   (value) {
                      //     return validatePhoneNumber(context, value.toString());
                      //   },
                      // ]),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: gray2,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [1]
                  .map(
                    (q) => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: gray4, width: 0.5),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/search_drop.svg'),
                          SizedBox(width: 18),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visit Ulaanbaatar',
                                style: TextStyle(
                                  color: darkGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Uvurkhangai, Bat-Ulzii',
                                style: TextStyle(
                                  color: gray2,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
