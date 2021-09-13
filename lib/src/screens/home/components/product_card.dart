import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, this.width = 140, this.aRatio = 1.02, required this.product,
  }) : super(key: key);

  final double width,aRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: aRatio,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(product.images[0]),
              ),
            ),

            const SizedBox(height: 5),

            Text(product.title,
                style: TextStyle(color: Colors.black), maxLines: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyle(fontSize: getProportionateScreenWidth(18), fontWeight: FontWeight.bold, color: kPrimaryColor),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                    width: getProportionateScreenWidth(28),
                    height: getProportionateScreenWidth(28),
                    decoration: BoxDecoration(color: product.isFavourite? kPrimaryColor.withOpacity(0.15) : kSecondaryColor.withOpacity(0.1), shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/Heart Icon_2.svg', color: product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),),
                  ),
                  onTap: (){},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
