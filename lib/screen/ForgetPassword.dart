import 'package:flutter/material.dart';
import 'package:mprogramer/util/Asset.dart';
import 'package:sizer/sizer.dart';

import '../componenet/Textfield.dart';
import '../componenet/button.dart';
import '../util/Colors.dart';
import '../util/RounteName.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: AppColors.whiteColor,
      //   title:
      // ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 7.h,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded,color: AppColors.primaryColor,size: 15,),
                  SizedBox(width: 10,),
                  Text('Back to Login',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: AppColors.primaryColor,fontSize: 15))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    child: Image(image: AssetImage(forgotImage),
                    height: 280,
                    width: 280    ,),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Forgot Password',
                          style: TextStyle(fontFamily: 'Poppins',fontSize: 30,
                              fontWeight: FontWeight.bold,color: AppColors.blackColor
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Insert your email address to receive a code for creating a new password',
                          style: TextStyle(fontFamily: 'Poppins',fontSize: 16,
                              fontWeight: FontWeight.bold,color: AppColors.black45Color
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.05,),
                  TextfieldCustom(label: 'Email Address', hinttext: 'anto_michael@gmail.com', TextController: emailController,Keyboardtype: TextInputType.emailAddress),
                  SizedBox(height: MediaQuery.of(context).size.height*.1,),
                  PrimaryButton(title: "Send Code",
                    onPress: (){Navigator.pushNamed(context, RouteName.Login);},
                    iconNameColor: AppColors.primaryColor,
                      iconYN : false )

                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
