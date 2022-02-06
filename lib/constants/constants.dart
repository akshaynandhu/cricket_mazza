import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: const BoxDecoration(
//           image: DecorationImage(image: AssetImage('assets/images/splash.jpg'))
//         ),
//       ),
//     );
//   }
// }

TextStyle style1(){
  return  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25.sp,
  );
}

TextStyle style2(){
  return  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
  );
}

TextStyle style3(){
  return  TextStyle(
    color: Colors.grey,
    fontSize: 14.sp,
  );
}

class HomeListView extends StatelessWidget {
  const HomeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 100.h,
            width: 300.w,
            child: Card(),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return  const SizedBox(
            width: 5,
          );
        },
        itemCount: 10
    );
  }
}

final h1 = SizedBox( height: 20.h);

final w1 = SizedBox( width: 20.w);

class HomeListView2 extends StatelessWidget {
  const HomeListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 200.h,
            width: 150.w,
            child: Card(),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return  const SizedBox(
            width: 5,
          );
        },
        itemCount: 10
    );
  }
}



