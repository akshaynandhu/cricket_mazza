import 'package:cricketmazza/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width.w,
              height: 280.h,
              child:ProfileCover()
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Column(
                      children:  [
                        Text('PROBABILITY'),
                        h2,
                        Text('72%',style: style5()),
                      ],
                    ),
                    Column(
                      children:  [
                        Text('CREDITS',),
                        h2,
                        Text('8.5',style: style5()),
                      ],
                    ),
                    Column(
                      children:  [
                        Text('TOTAL POINTS'),
                        h2,
                        Text('82',style: style5()),
                      ],
                    ),
                  ],
                ),

                const Divider(thickness: 2,),

                h2,

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Series Fantacy Stats',style: style2(),),
                  ],
                ),

                h2,

                Fantacy()

              ],),
            )

          ],
        ),
      ),
    );
  }
}
