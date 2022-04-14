// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/screens/home/components/categories.dart';
import 'package:shop_ui/screens/home/components/new_arivals.dart';
import 'package:shop_ui/screens/home/components/popular.dart';
import 'package:shop_ui/screens/home/components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Location.svg',
            ),
            SizedBox(width: defaultPadding / 2),
            Text(
              '9 Coull Dr',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            Text(
              'Lorem ipsum dolor',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            Categories(),
            SizedBox(height: defaultPadding),
            NewArivals(),
            SizedBox(height: defaultPadding),
            Popular(),
          ],
        ),
      ),
    );
  }
}
