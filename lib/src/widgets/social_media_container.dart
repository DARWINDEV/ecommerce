import 'package:ecommerce/src/widgets/socialCard.dart';
import 'package:flutter/material.dart';

class SocialMediaContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          icon: 'assets/icons/google-icon.svg',
          press: () {},
        ),
        SocialCard(
          icon: 'assets/icons/facebook-2.svg',
          press: () {},
        ),
        SocialCard(
          icon: 'assets/icons/twitter.svg',
          press: () {},
        ),
      ],
    );
  }
}
