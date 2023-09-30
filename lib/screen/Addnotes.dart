import 'package:flutter/material.dart';

//import 'package:mprogramer/extension/padding_extension.dart';
import 'package:mprogramer/util/Colors.dart';
import 'package:sizer/sizer.dart';

import '../Model/notelist.dart';
import '../componenet/Textfield.dart';
import '../componenet/button.dart';
//import '../util/RounteName.dart';

class Addnotes extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  List<Map<String, String>> Notelist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text('Add Notes',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: AppColors.black45Color,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextfieldCustom(
                    label: 'Name',
                    hinttext: 'Muhammad Ali Hassan Sheikh',
                    TextController: nameController,
                    Keyboardtype: TextInputType.text,
                    //obscureText : _toogle,
                    Iconyn: true,
                    sufficon: Icons.cancel,
                    iconcolor: AppColors.grayColor,
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  TextfieldCustom(
                    label: 'Write your data here',
                    hinttext:
                        'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                    TextController: dataController,
                    Keyboardtype: TextInputType.text,
                    //obscureText : _toogle,
                    Iconyn: false,
                    sufficon: Icons.cancel,
                    iconcolor: AppColors.grayColor,
                    maxLines: 15,
                    onPress: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  PrimaryButton(
                    title: "Save",
                    bordercircular: 10,
                    onPress: () {
                      String name = nameController.text;
                      String data = dataController.text;

                      Map<String, String> note = {
                        'title': name,
                        'note': data,
                      };

                      // final note = noteList(
                      //   name: nameController.text,
                      //   Data: dataController.text,
                      // );

                      Notelist.add(note);
                      nameController.clear();
                      dataController.clear();

                      print(Notelist);

                      Navigator.pop(context, Notelist);
                    },
                    iconNameColor: AppColors.primaryColor,
                    iconYN: false,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
