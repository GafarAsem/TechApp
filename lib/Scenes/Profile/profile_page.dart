import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tech_app/Constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kColorWhite,
        appBar: AppBar(
          backgroundColor: kColorWhite,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: kColorDark,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'معلومات عني',
            style: GoogleFonts.tajawal(
                fontSize: 20, color: kColorDark, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/logo.jpeg'),
                      fit: BoxFit.contain),
                  borderRadius: BorderRadius.circular(100),
                  color: kColorDark,
                ),
              ),
            ),
            Text(
              'هاوي تقنية 🇸🇦',
              style: GoogleFonts.tajawal(
                  fontSize: 20, color: kColorDark, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '''تطبيقي متخصص في التقنية ومواضيع الحماية من الاختراق وشروحات لبعض المشاكل على اجهزة ( ابل - اندرويد) وطرق لاستعادة الحسابات المخترقه''',
                style: GoogleFonts.tajawal(fontSize: 18, color: kColorDark),
              ),
            ),
            Center(
              child: IconButton(
                  icon: Icon(
                    LineAwesomeIcons.instagram,
                    size: 60,
                    color: kColorDark,
                  ),
                  onPressed: () {
                    launch('https://www.instagram.com/04.tech/');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
