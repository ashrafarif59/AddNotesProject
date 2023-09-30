
import 'package:flutter/material.dart';
import 'package:mprogramer/screen/Addnotes.dart';
import 'package:mprogramer/screen/ChangeProfile.dart';
import 'package:mprogramer/screen/CreatePassword.dart';
import 'package:mprogramer/screen/ForgetPassword.dart';
import 'package:mprogramer/screen/Home.dart';
import 'package:mprogramer/screen/Login.dart';
import 'package:mprogramer/screen/Onboarding.dart';
import 'package:mprogramer/screen/Profile.dart';
import 'package:mprogramer/screen/Register.dart';
import 'package:mprogramer/screen/ViewNotes.dart';
import 'package:mprogramer/screen/ViewSigneNotes.dart';
import 'package:mprogramer/util/RounteName.dart';

class  Routes
{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    switch(settings.name)
    {

      case RouteName.Onboarding:
        return MaterialPageRoute(builder: (context)=>Onboarding());

      case RouteName.Addnotes:
        return MaterialPageRoute(builder: (context)=>Addnotes());

      case RouteName.ChangeProfile:
        return MaterialPageRoute(builder: (context)=>ChangeProfile());

      case RouteName.CreatePassword:
        return MaterialPageRoute(builder: (context)=>CreatePassword());

      case RouteName.ForgetPassword:
        return MaterialPageRoute(builder: (context)=>ForgetPassword());

      case RouteName.Home:
        return MaterialPageRoute(builder: (context)=>Home());

      case RouteName.Login:
        return MaterialPageRoute(builder: (context)=>Login());

      case RouteName.Profile:
        return MaterialPageRoute(builder: (context)=>Profile());

      case RouteName.Register:
        return MaterialPageRoute(builder: (context)=>Register());

      case RouteName.ViewNotes:
        return MaterialPageRoute(builder: (context)=>ViewNotes());

      case RouteName.ViewSigneNotes:
        return MaterialPageRoute(builder: (context)=>ViewSigneNotes());




      default : return MaterialPageRoute(builder: (context)
      {
        return Scaffold(
          appBar: AppBar(
            title: Text('data'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Center(child: Text('No Routing Available',style: TextStyle(fontSize: 35),)),
              )
            ],
          ),
        );
      }
      );


    }
  }
}
