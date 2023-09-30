import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../util/Colors.dart';

class PrimaryButton extends StatelessWidget {
  String title;
  Color textColor;
  Color backgroundColor;
  IconData iconName;
  Color iconNameColor;
  VoidCallback onPress;
  String imageLeft;
  bool iconYN;
  double bordercircular;
  PrimaryButton({Key? key,
    required this.title,
    required this.onPress,
             this.textColor = AppColors.whiteColor,
             this.backgroundColor = AppColors.primaryColor,
             this.iconName =Icons.arrow_circle_right,
             this.iconNameColor = AppColors.whiteColor,
             this.imageLeft ='',
             this.iconYN = true,
             this.bordercircular=30.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        height: 7.h,
        width: MediaQuery.of(context).size.width*.9,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius:  BorderRadius.circular(bordercircular),
            border: Border.all(
                color: Colors.grey.shade400,
                width: 1
            )
        ),
        child:
        iconYN==false ?
        Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),))
        : imageLeft==''?
        Stack
          (
          children: [
          Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Align(
                alignment: Alignment.centerRight,
                child: Icon(iconName,size: 30,color: iconNameColor,),
          )
          )
        ]
          )
        :
        Stack
          (
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Align(
                   alignment: Alignment.centerLeft,
                    child: Image(image: AssetImage(imageLeft,),height: 20,)),
              ),
              Center(child: Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),)),

            ]
        ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [

              // Image(image: AssetImage(imageLeft,),height: 20,),
              // SizedBox(width: MediaQuery.of(context).size.width*.03,),
              // Text(title, style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: textColor,fontSize: 18),),
        //     ]
        // ),


          //SizedBox(width: MediaQuery.of(context).size.width*.03,),

          //Text('Login with Google', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: AppColors.primaryColor,fontSize: 18),),



      ),
    );
  }
}
