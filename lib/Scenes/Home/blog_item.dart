import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tech_app/Constant.dart';
import 'package:tech_app/Modules/blog_module.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:tech_app/Scenes/Detailes/detail_page.dart';

Widget BlogBuild(BuildContext context, Blog blog) {
  initializeDateFormatting();
  var format = DateFormat.yMMMMEEEEd('ar');
  var dateString = format.format(blog.dateTime);
  return Container(
    margin: EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width,
    height: 120,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kColorWhite,
        boxShadow: [kBoxShadow]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  blog.title,
                  style: GoogleFonts.tajawal(
                      color: kColorDark, fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    dateString,
                    style: GoogleFonts.tajawal(
                      color: kColorDark,
                    ),
                  ),
                ),
              ],
            )),
        Row(
          children: [
            Container(
              width: 320,
              child: Text(
                blog.detail.substring(0, 70) + " ...",
                style: GoogleFonts.tajawal(
                  color: kColorDark,
                  fontSize: 18,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: DetailPage(blog)));

              },
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 30,
                color: kColorSilver,
              ),
            )
          ],
        )
      ],
    ),
  );
}
