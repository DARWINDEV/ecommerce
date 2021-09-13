import 'package:flutter/material.dart';

import 'package:ecommerce/src/models/categoriesData.dart';
import 'package:ecommerce/src/utils/size_config.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(categories.length, (index) => CategoryCard(
            icon: categories[index]['icon'], 
            text: categories[index]['text'], 
            press: (){}))
        ],
      ),
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({ Key? key, required this.icon, required this.text, required this.press}) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: <Widget>[
            AspectRatio(aspectRatio: 1,
             child: Container(
               padding: EdgeInsets.all(getProportionateScreenWidth(15)),
               decoration: BoxDecoration(
                 color: Color(0xffFFECDF),
                 borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
               ),
               child: SvgPicture.asset(icon),
             )
            ),
            SizedBox(height: getProportionateScreenHeight(5),),
            Text(text, textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}