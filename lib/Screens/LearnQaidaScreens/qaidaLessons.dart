import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quranapp/Screens/QuizScreens/quiz_screen.dart';
import 'package:quranapp/Utilities/SliverWidgets.dart';
import 'package:quranapp/Utilities/constants.dart';
import 'package:quranapp/Utilities/listQaidaLesson.dart';

class QaidaLessons extends StatefulWidget {
  @override
  _QaidaLessonsState createState() => _QaidaLessonsState();
}

class _QaidaLessonsState extends State<QaidaLessons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: kGreenLightColor,
              title: MyAppBar(
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => QuizScreen(),
                        ));
                  },
                  child: Icon(
                    Icons.ac_unit,
                    size: 25,
                  ),
                ),
                () {},
              ),
              pinned: true,
              expandedHeight: 230,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexibleAppBar(
                  Image.asset('assets/images/madaniqaida.png', width: 180),
                  Image.asset('assets/images/ayat01.png', width: 300),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                qaidaLessons,
              ),
            )
          ],
        ),
      ),
    );
  }
}
