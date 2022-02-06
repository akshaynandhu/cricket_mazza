import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cricketmazza/view/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        builder: (context, widget){
          ScreenUtil.setContext(context);
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: widget!,);
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          animationDuration: Duration(seconds: 2),
          backgroundColor: Colors.black,
          splash: Text('Hello',style: TextStyle(color: Colors.white),),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: const  Bottom(),
        ),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}


