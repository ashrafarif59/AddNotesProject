import 'package:flutter/material.dart';
import 'package:mprogramer/util/Colors.dart';
import 'package:mprogramer/util/RounteName.dart';

import '../componenet/button.dart';
import '../util/Asset.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .13,
          ),
          Container(
            child: Image(image: AssetImage(mainImage)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child: Center(
                child: Text(
                  'Jot Down anything you want to achieve, today or in the future',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .17,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: PrimaryButton(
              title: "Let's Get Started",
              onPress: () {
                Navigator.pushNamed(context, RouteName.Login);
              },
              textColor: AppColors.primaryColor,
              backgroundColor: AppColors.whiteColor,
              iconNameColor: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
