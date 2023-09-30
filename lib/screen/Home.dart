import 'package:flutter/material.dart';
import 'package:mprogramer/screen/Login.dart';
import 'package:mprogramer/screen/home1.dart';

import '../componenet/button.dart';
import '../util/Asset.dart';
import '../util/Colors.dart';
import '../util/RounteName.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'Profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List layout = [home1(),  Profile(), Login(),];
  @override
  Widget build(BuildContext context) {

  final Size size = MediaQuery.of(context).size;
    return  Scaffold(
      // bottomNavigationBar:
      //     BottomNavigationBar(
      //       items: [
      //         BottomNavigationBarItem(icon: Icon(Icons.home,
      //           color: selectedIndex==0 ? Colors.lightBlueAccent : AppColors.whiteColor ,
      //           size: 30,),label: 'home'),
      //         BottomNavigationBarItem(icon: Icon(Icons.home,
      //           color: selectedIndex==0 ? Colors.lightBlueAccent : AppColors.whiteColor ,
      //           size: 30,),label: 'home')
      //
      //       ],
      //     ),
      body :    Stack(
            children: [
               layout[selectedIndex],
              Positioned(
                bottom: 0,
                  left: 0,
                  child: Container
                    (
                    //color: Colors.white,
                    height: 80,
                    width: size.width,
                    child: Stack(
                      children: [
                        CustomPaint(
                          size: Size(size.width, 80),
                          painter: BMBCustomPainter() ,
                        ),
                        Center(
                          heightFactor: .9,
                          child: FloatingActionButton(onPressed: (){
                            Navigator.pushNamed(context, RouteName.Addnotes);
                          },
                          backgroundColor: Colors.teal,
                            //shape: Border.all(),
                          child: Icon(Icons.add),
                          elevation: 0.1,),
                        ),
                        Container(
                          width: size.width,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedIndex=0;
                                  });


                                  },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home,
                                       color: selectedIndex==0 ? Colors.lightBlueAccent : AppColors.whiteColor ,
                                      size: 30,),
                                    Text('Home',style: TextStyle(color: selectedIndex==0 ? Colors.lightBlueAccent : AppColors.whiteColor),)
                                  ],
                                ),
                              ),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              SizedBox(),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedIndex=1;
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person_4_rounded,
                                      color: selectedIndex==1 ? Colors.lightBlueAccent : AppColors.whiteColor
                                      ,size: 30,),
                                    Text('Profile',style: TextStyle(color:
                                    selectedIndex==1 ? Colors.lightBlueAccent : AppColors.whiteColor
                                    ),)
                                  ],
                                ),
                              ),
                              SizedBox(),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),


    );
  }
}

class BMBCustomPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.primaryColor..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width*.20, 0, size.width*.35, 0);
    path.quadraticBezierTo(size.width*.40, 0, size.width*.40, 20);
    path.arcToPoint(Offset(size.width*.60, 20),radius: Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width*.60, 0, size.width*.65, 0);
    path.quadraticBezierTo(size.width*.80, 0, size.width ,20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}