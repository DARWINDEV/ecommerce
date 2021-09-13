import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/home/components/recommendations_title.dart';
import 'package:ecommerce/src/screens/home/components/product_card.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/models/product.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecomentarionsTitle(header: 'Popular Product', seeMore: () {}),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                  (index) => ProductCard(product: demoProducts[index])),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
