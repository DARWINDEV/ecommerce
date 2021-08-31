import 'package:flutter/material.dart';

import 'package:ecommerce/src/utils/size_config.dart';
import 'package:flutter_svg/svg.dart';

class Warnings extends StatelessWidget {
  const Warnings({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => errorText(error: errors[index])),
    );
  }

  Widget errorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(errors[0])
      ],
    );
  }
}
