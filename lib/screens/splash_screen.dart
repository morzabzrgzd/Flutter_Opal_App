import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opal_app/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    handleSplash();
  }

  handleSplash() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WellcomeScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 123.h),
            Image.asset(
              'assets/images/Opal.png',
              width: 511.w,
              height: 382.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: Text(
                'Opal',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
