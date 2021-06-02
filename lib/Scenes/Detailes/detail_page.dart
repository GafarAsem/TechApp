import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;
import 'package:tech_app/Constant.dart';
import 'package:tech_app/Modules/blog_module.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Blog blog;

  DetailPage(this.blog);

  @override
  Widget build(BuildContext context) {
    var format = intl.DateFormat.yMMMMEEEEd('ar');
    var dateString = format.format(blog.dateTime);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kColorWhite,
        appBar: AppBar(
            backgroundColor: kColorWhite,
            title: Text(
              blog.title,
              style: GoogleFonts.tajawal(
                color: kColorDark,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                  color: kColorDark,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      dateString,
                      style: GoogleFonts.tajawal(color: kColorDark),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/logo.jpeg')),
                          borderRadius: BorderRadius.circular(50),
                          color: kColorDark),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  blog.detail,
                  style: GoogleFonts.tajawal(fontSize: 20, color: kColorDark),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: blog.uri.map((e) => buttonUrl(e, blog.uri.indexOf(e)+1)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  Widget buttonUrl(url,int numperOFurl){
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: kColorDark),
      onPressed: () {
        launch(url);
      },
      child: Text(
        ' لرابط $numperOFurl',
        style: GoogleFonts.tajawal(
          color: kColorWhite,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }


}
