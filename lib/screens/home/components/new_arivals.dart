import 'package:flutter/material.dart';
import 'package:shop_ui/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/home/components/product_card.dart';
import 'package:shop_ui/screens/home/components/section_title.dart';

class NewArivals extends StatelessWidget {
  const NewArivals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {},
          title: 'New Arivals',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  bgColor: demo_product[index].bgColor,
                  image: demo_product[index].image,
                  press: () {},
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
