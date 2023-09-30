import 'package:flutter/material.dart';
import 'package:mprogramer/extension/padding_extension.dart';
import 'package:mprogramer/util/Asset.dart';
import 'package:mprogramer/util/Colors.dart';
import 'package:mprogramer/util/RounteName.dart';
import 'package:sizer/sizer.dart';

import '../componenet/Textfield.dart';
import '../componenet/button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _toogle = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   backgroundColor: AppColors.whiteColor,
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: MediaQuery.of(context).size.height*.08,),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Let Login',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontSize: 30),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .001,
              ),
              Text(
                'And notes your idea',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.black45Color,
                    fontSize: 15),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              TextfieldCustom(
                  label: 'Email Address',
                  hinttext: 'Example: John Doe',
                  TextController: emailController,
                  Keyboardtype: TextInputType.emailAddress),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              TextfieldCustom(
                label: 'Password',
                hinttext: '**********',
                TextController: passwordController,
                Keyboardtype: TextInputType.text,
                obscureText: _toogle,
                Iconyn: true,
                sufficon: _toogle == true
                    ? Icons.visibility
                    : Icons.visibility_off_outlined,
                iconcolor: AppColors.grayColor,
                onPress: () {
                  setState(() {
                    if (_toogle == true) {
                      _toogle = false;
                    } else {
                      _toogle = true;
                    }
                  });
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.ForgetPassword);
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.CreatePassword);
                      },
                      child: Text(
                        'New Password',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .08,
              ),
              PrimaryButton(
                  title: 'Login',
                  onPress: () {
                    Navigator.pushNamed(context, RouteName.Home);
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                    Text(
                      "      OR      ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                  ]),

              // Text('-------------------------------------',style: TextStyle(color: Colors.grey.shade400),),
              // VerticalDivider(),
              // Text('Or' ,style: TextStyle(color: Colors.grey)),
              // VerticalDivider(),
              // Text('-------------------------------------',style: TextStyle(color: Colors.grey.shade400)),

              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              PrimaryButton(
                title: 'Login With Google',
                onPress: () {},
                textColor: AppColors.primaryColor,
                backgroundColor: AppColors.whiteColor,
                imageLeft: googleImage,
              ),

              PrimaryButton(
                title: 'Padding',
                onPress: () {},
                textColor: AppColors.primaryColor,
                backgroundColor: AppColors.whiteColor,
                imageLeft: googleImage,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.grey,
              ).withOnlyPadding(bottom: 30),

              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.Register);
                  },
                  child: Center(
                      child: Text(
                    'Don’t have any account? Register here',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                        fontSize: 16),
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
