import 'package:flutter/material.dart';

import '../util/Colors.dart';

class TextfieldCustom extends StatelessWidget {
  String? label;
  String? hinttext;
  TextEditingController? TextController;
  TextInputType? Keyboardtype;
  bool? obscureText;
  IconData? sufficon;
  Color? iconcolor;
  bool ? Iconyn;
  VoidCallback? onPress;
  int? maxLines;


    TextfieldCustom({Key? key,required this.label, required this.hinttext,required this.TextController,required this.Keyboardtype, this.obscureText =false,
      this.sufficon,
      this.Iconyn = false,
      this.onPress,
    this.iconcolor,
    this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? 'Enter Text', style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,color: AppColors.blackColor,fontSize: 15),),
        SizedBox(height: MediaQuery.of(context).size.height*.01,),
        TextFormField(
          obscureText: obscureText ?? false,
          controller: TextController ,
          keyboardType: Keyboardtype,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            hintText: hinttext,
            suffixIcon :Iconyn == true ? IconButton(
                onPressed: onPress,
                icon: Icon(sufficon,color: iconcolor,),) : null,
            hintStyle: TextStyle(fontSize: 14 , color: Colors.grey.shade600),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600 ,width: 1),
                borderRadius: BorderRadius.circular(10)

            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600 ,width: 1),
                borderRadius: BorderRadius.circular(10)

            ),

          ),
        ),
      ],
    );
  }
}


// import 'package:flutter/material.dart';
//
// class roundbutton extends StatelessWidget {
//   String title;
//   VoidCallback onPress;
//   roundbutton({Key? key,required this.title, required this.onPress}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: InkWell(
//           onTap: onPress,
//           child: Container(
//             height: 70,
//             width: 70,
//             decoration: BoxDecoration(
//                 color: Colors.transparent,
//                 shape: BoxShape.circle
//
//             ),
//             child: Center(child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
//           ),
//         ),
//       ),
//     );
//   }
// }
