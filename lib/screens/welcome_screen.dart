import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              color: Colors.amber,
              width: double.infinity,
              margin: EdgeInsets.only(top: 127.h),
              child: Image.asset(
                'assets/images/Bgimage.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 43.h, bottom: 16.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 5.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffF1F5F9),
                    ),
                    child: Text(
                      'Join 100,000 people using Opal',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff6E7277),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  const TitleWidget(),
                  const CardWidget(),
                  SizedBox(height: 44.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 70.h,
                      width: 367.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff3273F6)),
                      child: Text(
                        'Let’s go!',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Take control of\nyour phone',
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
          color: const Color(0xff171A1F),
          fontSize: 35.sp,
          fontWeight: FontWeight.w700),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 349.h),
        width: 358.w,
        height: 148.h,
        decoration: BoxDecoration(
            color: const Color(0xffF4F4F4),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              SizedBox(height: 24.h),
              Container(
                width: 73.w,
                height: 73.h,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1440133197387-5a6020d5ace2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h),
                  Text(
                    'This app has fundamentally\nchanged how I engage with\nsocial media, and I’m super\ngrateful for it.',
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff434343),
                    ),
                  ),
                  Text(
                    '@janm_ux',
                    style: GoogleFonts.poppins(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffA0A3A7),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
