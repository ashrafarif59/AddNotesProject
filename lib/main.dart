import 'package:flutter/material.dart';
import 'package:mprogramer/util/Colors.dart';
import 'package:mprogramer/util/RounteName.dart';
import 'package:mprogramer/util/routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: RouteName.Onboarding,
          onGenerateRoute: Routes.generateRoute,
        );
      }
    );
  }
}
