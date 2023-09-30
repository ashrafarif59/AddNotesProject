import 'package:flutter/material.dart';
import 'package:mprogramer/componenet/button.dart';
import 'package:mprogramer/util/Asset.dart';
import 'package:mprogramer/util/Colors.dart';
import 'package:mprogramer/util/RounteName.dart';

import '../componenet/Textfield.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.primaryColor,
                size: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Back to Login',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor,
                      fontSize: 15))
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: MediaQuery.of(context).size.height*.08,),
              Text(
                'Register',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.blackColor,
                    fontSize: 30),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Text(
                'And start taking notes',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: AppColors.black45Color,
                    fontSize: 15),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              TextfieldCustom(
                  label: 'Full Name',
                  hinttext: 'Example: John Doe',
                  TextController: fullnameController,
                  Keyboardtype: TextInputType.text),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
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
                  obscureText: true),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              TextfieldCustom(
                  label: 'Retype Password',
                  hinttext: '**********',
                  TextController: repasswordController,
                  Keyboardtype: TextInputType.text,
                  obscureText: true),

              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              PrimaryButton(title: 'Register', onPress: () {}),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Row(
                children: [
                  Text(
                    '-------------------------------------',
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  VerticalDivider(),
                  Text('Or', style: TextStyle(color: Colors.grey)),
                  VerticalDivider(),
                  Text('-------------------------------------',
                      style: TextStyle(color: Colors.grey.shade400)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              PrimaryButton(
                title: 'Register With Google',
                onPress: () {},
                textColor: AppColors.primaryColor,
                backgroundColor: AppColors.whiteColor,
                imageLeft: googleImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
