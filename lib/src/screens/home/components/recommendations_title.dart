import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';

class RecomentarionsTitle extends StatelessWidget {
  const RecomentarionsTitle({ Key? key, required this.header, required this.seeMore }) : super(key: key);

  final String header;
  final Function()? seeMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(header, style: TextStyle(fontSize: getProportionateScreenWidth(18), color: Color(0xff383838)),),
          InkWell(onTap: seeMore, child: Text('See more', style: TextStyle(color: Color(0xff383838)),))
        ],
      ),
    );
  }
}