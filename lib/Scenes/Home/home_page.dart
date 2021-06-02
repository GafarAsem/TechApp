import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tech_app/Constant.dart';
import 'package:tech_app/Modules/blog_module.dart';
import 'package:tech_app/Scenes/Home/blog_item.dart';
import 'package:tech_app/Scenes/NextPage/next_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: kColorWhite,
          appBar: AppBar(
            backgroundColor: kColorWhite,
            title: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'مدوناتي',
                style: GoogleFonts.tajawal(
                    color: kColorDark,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            leading: Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('asset/logo.jpeg')),
                  borderRadius: BorderRadius.circular(50),
                  color: kColorDark,
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: NextPage(2)));
              }, child: Text('الصفحة التالية',style: GoogleFonts.tajawal(),))
            ],
          ),
          body: Container(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return BlogBuild(
                  context,
                  Blog(
                    ' للانستقرام موقع تحط فيه اسم اي حساب تبيه ويظهر لك تحليل عن متابعينه والايكات حقيقيناو وهميين بالارقام',
                    'https://influencermarketinghub.com/instagram-fake-follower-bot-checker-free/',
                    DateTime.now(),
                    title:'تحليل للحساب',
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
