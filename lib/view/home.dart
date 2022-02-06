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
          backgroundColor: Colors.purple,
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

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                          height: 150.h,
                          width: 400.w,
                          child: HomeListView()),
                    ],
                  ),
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

                Row(
                  children: [
                    Flexible(
                      child: Container(
                        width: 333.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: NetworkImage('https://english.cdn.zeenews.com/sites/default/files/2021/10/16/979884-galleryprizecsklead.jpg'),)
                        ),
                      ),
                    ),
                  ],
                ),

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
