// import 'package:cricketmazza/constants/constants.dart';
import 'package:cricketmazza/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text('Home',style: style1(),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search))
          ],
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 15),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Recent Matches',style: style2(),),
                  ],
                ),

                SizedBox(
                    height: 150.h,
                    width: 350.w,
                    child: HomeListView()
                ),

                h1,

                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Top Stories',style: style2(),),

                      Text('View More',style: style3(),),

                    ],
                  ),
                ),

                SizedBox(height: 10.h,),

                Row(
                  children: [
                    Container(
                      width: 330.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.r),
                        image: const DecorationImage(
                          image: NetworkImage('https://english.cdn.zeenews.com/sites/default/files/2021/10/16/979884-galleryprizecsklead.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                      child: Container(
                        width: 330.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.transparent,
                                Colors.transparent,
                                Colors.transparent,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.05,0.43,0.0,3],
                            )
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(top: 120.h,left: 10.w),
                          child: Text('CSK beat KKR in the IPL 2021',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ),
                  ],
                ),

                h1,

                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Featured Videos',style: style2(),),

                      Text('View More',style: style3(),),

                    ],
                  ),
                ),

                SizedBox(height: 10.h,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          height: 200.h,
                          width: 400.w,
                          child: HomeListView2()),
                    ],
                  ),
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
