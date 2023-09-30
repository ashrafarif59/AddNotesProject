import 'package:flutter/material.dart';

import '../componenet/Textfield.dart';
import '../componenet/button.dart';
import '../util/Asset.dart';
import '../util/Colors.dart';
import '../util/RounteName.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        title: InkWell(
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
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Create a New Password',
                      style: TextStyle(fontFamily: 'Poppins',fontSize: 30,
                          fontWeight: FontWeight.bold,color: AppColors.blackColor
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('Your new password should be different from the previous password',
                      style: TextStyle(fontFamily: 'Poppins',fontSize: 16,
                          fontWeight: FontWeight.bold,color: AppColors.black45Color
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              TextfieldCustom(label: 'New Password', hinttext: '**************', TextController: passwordController,Keyboardtype: TextInputType.text,obscureText: true,),
              SizedBox(height: MediaQuery.of(context).size.height*.01,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('min. 8 character, combination of 0-9, A-Z, a-z',
                    style: TextStyle(fontFamily: 'Poppins',fontSize: 10,
                        fontWeight: FontWeight.bold,color: AppColors.black45Color)
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*.05,),
              TextfieldCustom(label: 'Retype New Password', hinttext: '**************', TextController: repasswordController,Keyboardtype: TextInputType.text,obscureText: true,),
              SizedBox(height: MediaQuery.of(context).size.height*.27,),
              PrimaryButton(title: "Create Password",
                  onPress: (){Navigator.pushNamed(context, RouteName.Login);},
                  iconNameColor: AppColors.primaryColor,
                  iconYN : false,
                  bordercircular : 10)

            ],
          ),
        ),
      ),
    );;
  }
}
