import 'package:ecommerce/src/utils/size_config.dart';
import 'package:ecommerce/src/values/constants.dart';
import 'package:ecommerce/src/widgets/genericButton.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/src/screens/splash/components/splash_content.dart';
import 'package:ecommerce/src/models/spashData.dart';

class BodySplash extends StatefulWidget {
  @override
  _BodySplashState createState() => _BodySplashState();
}

class _BodySplashState extends State<BodySplash> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                          text: splashData[index]["text"],
                          image: splashData[index]["image"],
                        ))),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => pageDot(index: index)),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      GenericButton(text: "Continue", press: () => Navigator.pushNamed(context, 'signInScreen')),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer pageDot({index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xffD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


