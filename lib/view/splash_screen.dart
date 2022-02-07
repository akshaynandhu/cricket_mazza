import 'package:cricketmazza/constants/constants.dart';
import 'package:cricketmazza/view/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}



class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> const Bottom())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:   const BoxDecoration(
          image: DecorationImage(
            // colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.6), BlendMode.hardLight),
            image: AssetImage('assets/images/splahscreen.jpeg'),
            fit: BoxFit.cover,
          )
        ),
        child: Container(
          width: 330.w,
          height: 40.h,
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              color: Colors.deepPurpleAccent.withOpacity(0.8)
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image(image: AssetImage('assets/images/criclogo.png'),color: Colors.white,width: 120.h,height: 120.w,),
                  Text('Cricket',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                  Text('Mazza 11',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SpinKitCircle(color: Colors.white,),
              )

            ],
          ),
        )
      ),
    );
  }
}
