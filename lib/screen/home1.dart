import 'package:flutter/material.dart';

import '../Model/notelist.dart';
import '../util/Asset.dart';
import '../util/Colors.dart';

class home1 extends StatefulWidget {
  //const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
//  List<noteList> Notelist=[];
//List<notelist> NoteList=[noteList(name: ., Data: Data)]
//   List<noteList> Note = [];
  List<Map<String, String>> NotesList = [];

  // @override
//adddata(Note);

  @override
  Widget build(BuildContext context) {
    //print(Note)
    return NotesList.isNotEmpty
        ? Scaffold(
            backgroundColor: Colors.red,
            body: ListView.builder(
              itemCount: NotesList.length,
              itemBuilder: (context, index) => Container(
                color: Colors.yellow,
                child: ListTile(
                  title: Text(NotesList[index]['title'] ?? ''),
                  subtitle: Text(NotesList[index]['note'] ?? ''),
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: AppColors.whiteColor,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Container(
                      child: Image(image: AssetImage(homepic1)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Start Your Journey',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blackColor),
                            ),
                            Center(
                              child: Text(
                                'Every big step start with small step.Notes your first idea and start your journey!',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black45Color),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //SizedBox(height: MediaQuery.of(context).size.height*.01,),
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0),
                      child: Container(
                        child: Image(
                          image: AssetImage(homepic2),
                          height: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
