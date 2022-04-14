// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search...',
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
              vertical: defaultPadding / 2,
            ),
            child: SizedBox(
              height: 48.0,
              width: 48.0,
              child: ElevatedButton(
                onPressed: () {},
                child: SvgPicture.asset("assets/icons/Filter.svg"),
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(defaultBorderRadius),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultBorderRadius),
  ),
  borderSide: BorderSide.none,
);
