import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:sizer/sizer.dart';
import 'package:tugas/presentation/authentication/log_in_page.dart';
import 'package:tugas/presentation/authentication/sign_in_page.dart';

class OnBoardingDetail extends StatefulWidget {
  const OnBoardingDetail({Key? key}) : super(key: key);

  @override
  State<OnBoardingDetail> createState() => _OnBoardingDetailState();
}

class _OnBoardingDetailState extends State<OnBoardingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        controllerColor: Colors.blue,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
          elevation: 10,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop(true);
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 10,
            ),
            child: Text(
              'Kembali',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        headerBackgroundColor: Colors.white,
        onFinish: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
          );
        },
        skipTextButton: Text('Lewati'),
        trailing: Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        trailingFunction: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => LogInPage()),
          );
        },
        background: [
          Image.asset('image/splash1.png'),
          Image.asset('image/splash2.png'),
          Image.asset('image/splash3.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Temukan kelas favoritmu! 🏛️',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  'Dapatkan ikhtisar tentang kinerja Anda dan motivasi diri Anda untuk mencapai hasil yang lebih baik.',
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Jelajahi keterampilanmu 🗓️',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Dapatkan ikhtisar tentang kinerja Anda dan motivasi diri Anda untuk mencapai hasil yang lebih baik.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SizedBox(
                  height: 70.h,
                ),
                Text(
                  'Dapatkan nilai terbaik 🏛️',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
