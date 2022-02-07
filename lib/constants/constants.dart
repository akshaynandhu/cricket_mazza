import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

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

List<dynamic> featuredText = [
  Text('Australia sit pretty with 175',style: style8(),),
  Text('Gautam Gambhir Rcords, world cups',style: style8(),),
  Text('Australia sit pretty with 175',style: style8(),),
  Text('Gautam Gambhir Rcords, world cups',style: style8(),),
  Text('Australia sit pretty with 175',style: style8(),),
  Text('Gautam Gambhir Rcords, world cups',style: style8(),),
  Text('Australia sit pretty with 175',style: style8(),),
  Text('Gautam Gambhir Rcords, world cups',style: style8(),),
];

List<String> featuredImages = [
  "https://www.wacricket.com.au/-/media/cricketwacacomau/News/220104_cooper_connolly.ashx",
  "https://img.cricketnmore.com/uploads/2021/10/gautam-gambhir-indias-greatest-unpraised-cricketer.jpg",
  "https://www.wacricket.com.au/-/media/cricketwacacomau/News/220104_cooper_connolly.ashx",
  "https://img.cricketnmore.com/uploads/2021/10/gautam-gambhir-indias-greatest-unpraised-cricketer.jpg",
  "https://www.wacricket.com.au/-/media/cricketwacacomau/News/220104_cooper_connolly.ashx",
  "https://img.cricketnmore.com/uploads/2021/10/gautam-gambhir-indias-greatest-unpraised-cricketer.jpg",
  "https://www.wacricket.com.au/-/media/cricketwacacomau/News/220104_cooper_connolly.ashx",
  "https://img.cricketnmore.com/uploads/2021/10/gautam-gambhir-indias-greatest-unpraised-cricketer.jpg",
];

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

TextStyle style4(){
  return  TextStyle(
    fontSize: 18.sp,
  );
}

TextStyle style5(){
  return  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );
}

TextStyle style6(){
  return  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 15.sp,
  );
}

TextStyle style7(){
  return  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
  );
}


TextStyle style8(){
  return  TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 13.sp,
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
            height: 180.h,
            width: 350.w,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Card(
              child: Column(
                children: [
                  Row(
                    children: [
                       Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text('3rd Match, ODI - Zimbave tour of Ireland, 2021',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold,fontSize: 15.sp),),
                      )
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            h1,
                            Image.network('https://enkoeducation.com/wp-content/uploads/2018/06/zimbabwe.png',width: 50.w,height: 50.h,),
                            SizedBox(height: 5.h,),
                            Text('Zimbabwe',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('150/10 ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.sp)),
                            const Text('20 Ov.',style: TextStyle(color:Colors.grey,))
                          ],
                        ),
                        SizedBox(width: 10.w,),
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 35.w,height: 35.h,),
                        w1,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text('154/7 ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.sp)),
                            const Text('19.3 Ov.',style: TextStyle(color:Colors.grey,))
                          ],
                        ),
                        Column(
                          children: [
                            h1,
                            Image.network('https://a.espncdn.com/i/teamlogos/cricket/500/29.png',width: 50.w,height: 50.h,),
                            SizedBox(height: 5.h,),
                             Text('Ireland', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),

                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 5.h,),

                   Text('IRE Won by 3 Wickets(DLS)',style: TextStyle(color: Colors.red,fontSize: 15.sp),)

                ],
              ),
            ),
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

class MatchesListView extends StatelessWidget {
  const MatchesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 120.h,
            width: 200.w,
            child: Card(
              child: Column(
                children: [
                  h1,
                   Text('IPL T20',style: TextStyle(color: Colors.grey[700]),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Chennai-Super-Kings-Logo-PNG.png',width: 80,height: 80,),
                        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 50,height: 50,),
                        Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Mumbai-Indians-Logo-PNG.png',width: 80,height: 80,)
                      ],
                    ),
                  ),

                  Container(
                    width: 180.w,
                    height: 15.h,
                    decoration:  BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
                    ),
                    child: Center(child: matchText),
                  )
                ],
              ),
            ),
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

final h2 = SizedBox( height: 5.h);


final w1 = SizedBox( width: 20.w);
final w2 = SizedBox( width: 40.w);
final w3 = SizedBox( width: 90.w);
final w4 = SizedBox( width: 50.w);

final matchText =  Text('Mon. 07.30 PM | 28 Nov.2021',style: TextStyle(color: Colors.white,fontSize: 10),);


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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r)
            ),
            child: Card(
              child: Column(
                children: [
                  Container(
                    height: 75.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10.r),topRight: Radius.circular(10.r)),
                      image: DecorationImage(
                          image: NetworkImage(featuredImages[index]),
                          fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                      )
                    ),
                    child: Center(
                      child: IconButton(onPressed: (){}, icon: const Icon(Icons.play_circle_fill,color: Colors.white,)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: featuredText[index],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit iaculis pharetra ut vel orci.'),
                    ),
                  ),


                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index){
          return  const SizedBox(
            width: 5,
          );
        },
        itemCount: featuredImages.length,
    );
  }
}

Widget LiveTabbar(){
  return DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white.withOpacity(0.1),
        backgroundColor: Colors.white.withOpacity(0.1),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            TabBar(
              indicatorColor: Colors.blue[900],
              labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                Text('Live',style: style4(),),
                Text('Score Card',style: style4(),),
                Text('Points',style: style4(),),
                Text('Info',style: style4(),),
                Text('Balance',style: style4(),),
              ],
            )
          ],
        ),
      ),


      // AppBar(
      //   bottom: const TabBar(
      //     isScrollable: true,
      //     tabs: [
      //
      //     ],
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.purple,
      //   title: Text('Live Line',style: style1(),),
      //   actions: [
      //     IconButton(onPressed: (){}, icon: const Icon(Icons.search))
      //   ],
      //   leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      // ),


      body:  const TabBarView(
        children: [
          AllLive(),
          Center(child: Text('ScoreCard')),
          Center(child: Text('Points')),
          Center(child: Text('Info')),
          Center(child: Text('Balance')),        ],
      ),
    ),
  );
}



Widget MatchesTabbar(){
  return DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white.withOpacity(0.1),
        backgroundColor: Colors.white.withOpacity(0.1),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:  [
            TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 26),
              indicatorColor: Colors.blue[900],
              indicatorSize: TabBarIndicatorSize.tab ,
              labelColor: Colors.blue[900],
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              tabs: [
                Text('All',style: style4(),),
                Text('ODI',style: style4(),),
                Text('T20',style: style4(),),
                Text('Test',style: style4(),),
                Text('T10',style: style4(),),
              ],
            )
          ],
        ),
      ),

      body:   const TabBarView(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: MatchesListView(),
          ),
          Center(child: Text('ODI',)),
          Center(child: Text('T20',)),
          Center(child: Text('Test',)),
          Center(child: Text('T10',)),
        ],
      ),
    ),
  );
}

Widget ProfileCover(){
  return Stack(
    children: [
      ClipRRect(
          child: Image(
            image: NetworkImage('https://media.istockphoto.com/photos/modern-gradient-abstract-background-picture-id980940618?b=1&k=20&m=980940618&s=170667a&w=0&h=wayK91aJW5oaIvixVONisJifsK3rdU1P7QTdm9-WlSM='),
            fit: BoxFit.cover,
            height: 280.h,
          )),


      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            Text('Player Profile',style: style7(),),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))

          ],
        ),
      ),

       Positioned(
          top: 70.h,
          left: 5.w,
          child:  SizedBox(
            height: 210.h,
            width: 205.w,
            child: Image(
              image:
              NetworkImage('https://i.postimg.cc/FsWjfkfH/IMG-20220207-041116-removebg-preview.png'),
              fit: BoxFit.cover,
            ),
          )
      ),

      Positioned(
        top: 180.h,
          right: 2.w,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            width: 150,
          margin: const EdgeInsets.all(10),
          child:  LinearProgressIndicator(
            value: 0.8,
            backgroundColor: Colors.grey[400],
            color: Colors.white,
            minHeight: 8.h,
          )
      )),


      Positioned(
          top: 220.h,
          right: 2.w,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
              ),
              width: 150,
              margin: const EdgeInsets.all(10),
              child:  LinearProgressIndicator(
                value: 0.9,
                backgroundColor: Colors.grey[400],
                color: Colors.white,
                minHeight: 8.h,
              )
          )),
      
      Positioned(
          top: 100.h,
          right: 20.w,
          child: RichText(
        text:  TextSpan(
          children:  <TextSpan>[
            TextSpan(text: 'MS Dhoni ', style: style5()),
            const TextSpan(text: '(Batsman)',style: TextStyle(fontWeight: FontWeight.w300)),
          ],
        ),
      )
      ),

      Positioned(
          top: 170.h,
          right: 15.w,
          child: Row(
            children: [
              Text('Bating',style: TextStyle(color: Colors.white),),
              SizedBox(width: 75.w,),
              Text('80%',style: TextStyle(color: Colors.white),)
            ],
          )
      ),

      Positioned(
          top: 210.h,
          right: 15.w,
          child: Row(
            children: [
              Text('WC',style: TextStyle(color: Colors.white),),
              SizedBox(width: 90.w,),
              Text('90%',style: TextStyle(color: Colors.white),)
            ],
          )
      ),

       Positioned(
          top: 120.h,
          right: 90.w,
          child: Text('TEAM INDIA',style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w300),)
      ),


    ],
  );
}

Widget Fantacy(){
  return Container(
    width: 330.w,
    height: 320.h,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20)
    ),
    child: Column(
      children: [
        Container(
          height: 40.h,
          width: 330.w,
          decoration:  BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Match',style: style6(),),
                w3,
                Text('Points',style: style6(),),
                w4,
                Text('Selected By',style: style6(),),
              ],
            ),
          ),
        ),

        Tile(),

        Container(
          height: 40.h,
          width: 330.w,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('IND VS ZIM',style: style4(),),
                 SizedBox(
                  width: 52.w,
                ),
                Text('10',style: style4(),),
                 SizedBox(
                  width: 80.w,
                ),
                Text('13.85%',style: style4(),),
              ],
            ),
          ),
        ),

        Container(
          height: 40.h,
          width: 330.w,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('IND VS NZ',style: style4(),),
                 SizedBox(
                  width: 60.w,
                ),
                Text('10',style: style4(),),
                 SizedBox(
                  width: 80.w,
                ),
                Text('13.85%',style: style4(),),
              ],
            ),
          ),
        ),

        Container(
          height: 40.h,
          width: 330.w,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('IND VS WI',style: style4(),),
                SizedBox(
                  width: 62.w,
                ),
                Text('10',style: style4(),),
                SizedBox(
                  width: 80.w,
                ),
                Text('13.85%',style: style4(),),
              ],
            ),
          ),
        ),

        Tile(),
        Tile3(),
        Tile2(),

      ],
    )
  );
}

Widget Tile(){
  return Container(
    height: 40.h,
    width: 330.w,
    color: Colors.grey[200],
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text('IND VS PAK',style: style4(),),
          w4,
          Text('10',style: style4(),),
          w1,
          w1,
          w1,
          w1,
          Text('13.85%',style: style4(),),
        ],
      ),
    ),
  );
}

Widget Tile2(){
  return Container(
    height: 40.h,
    width: 330.w,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(10))
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text('IND VS IRE',style: style4(),),
          SizedBox(
            width: 58.w,
          ),
          Text('10',style: style4(),),
          SizedBox(
            width: 80.w,
          ),
          Text('13.85%',style: style4(),),
        ],
      ),
    ),
  );
}

Widget Tile3(){
  return Container(
    height: 40.h,
    width: 330.w,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text('IND VS IRE',style: style4(),),
          SizedBox(
            width: 58.w,
          ),
          Text('10',style: style4(),),
          SizedBox(
            width: 80.w,
          ),
          Text('13.85%',style: style4(),),
        ],
      ),
    ),
  );
}

Widget matchBox1(){
  return Container(
    height: 120.h,
    width: 200.w,
    decoration: const BoxDecoration(
      // image: DecorationImage(image: AssetImage('assets/images/matchbg.jpg'))
    ),
    child: Card(
      child: Column(
        children: [
          h1,
          const Text('IPL T20'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Chennai-Super-Kings-Logo-PNG.png',width: 80,height: 80,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 50,height: 50,),
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Mumbai-Indians-Logo-PNG.png',width: 80,height: 80,)
              ],
            ),
          ),

          Container(
            width: 180.w,
            height: 15.h,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
            ),
            child: Center(child: matchText),
          )
        ],
      ),
    ),
  );
}

Widget matchBox2(){
  return Container(
    height: 120.h,
    width: 200.w,
    decoration: const BoxDecoration(
      // image: DecorationImage(image: AssetImage('assets/images/matchbg.jpg'))
    ),
    child: Card(
      child: Column(
        children: [
          h1,
          const Text('IPL T20'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Chennai-Super-Kings-Logo-PNG.png',width: 80,height: 80,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 50,height: 50,),
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Mumbai-Indians-Logo-PNG.png',width: 80,height: 80,)
              ],
            ),
          ),

          Container(
            width: 180.w,
            height: 15.h,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
            ),
            child: Center(child: matchText),
          )
        ],
      ),
    ),
  );
}

Widget matchBox3(){
  return Container(
    height: 120.h,
    width: 200.w,
    decoration: const BoxDecoration(
      // image: DecorationImage(image: AssetImage('assets/images/matchbg.jpg'))
    ),
    child: Card(
      child: Column(
        children: [
          h1,
          const Text('IPL T20'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Chennai-Super-Kings-Logo-PNG.png',width: 80,height: 80,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 50,height: 50,),
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Mumbai-Indians-Logo-PNG.png',width: 80,height: 80,)
              ],
            ),
          ),

          Container(
            width: 180.w,
            height: 15.h,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
            ),
            child: Center(child: matchText),
          )
        ],
      ),
    ),
  );
}

Widget matchBox4(){
  return Container(
    height: 120.h,
    width: 200.w,
    decoration: const BoxDecoration(
      // image: DecorationImage(image: AssetImage('assets/images/matchbg.jpg'))
    ),
    child: Card(
      child: Column(
        children: [
          h1,
          const Text('IPL T20'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Chennai-Super-Kings-Logo-PNG.png',width: 80,height: 80,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 50,height: 50,),
                Image.network('https://www.pngall.com/wp-content/uploads/2017/04/Mumbai-Indians-Logo-PNG.png',width: 80,height: 80,)
              ],
            ),
          ),

          Container(
            width: 180.w,
            height: 15.h,
            decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),)
            ),
            child: Center(child: matchText),
          )
        ],
      ),
    ),
  );
}



Widget Live2(){
  return Container(
      width: 350.w,
      height: 150.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Card(
        child: Column(
          children: [
            Container(
              height: 40.h,
              width: 330.w,
              decoration:  BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('BATSMAN',style: style6(),),
                    SizedBox(width: 80.w,),
                    Text('R',style: style6(),),
                    w1,
                    Text('B',style: style6()),
                    w1,
                    Text('4s',style: style6()),
                    w1,
                    Text('6s',style: style6()),
                    w1,
                    Text('SR',style: style6())

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                   Icon(Icons.sports_cricket,color: Colors.blue[900],),
                  const Text(' Paul Stirling'),
                  SizedBox(width: 50.w,),
                  Text('30'),
                  w1,
                  Text('15'),
                  w1,
                  Text('2'),
                  SizedBox(width: 28.w,),
                  Text('1'),
                  w1,
                  Text('25.5')
                ],
              ),
            ),

            Divider(thickness: 1,),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  w1,
                  const Text("  Kevin O'Brien"),
                  SizedBox(width: 43.w,),
                  Text('40'),
                  w1,
                  Text('22'),
                  w1,
                  Text('3'),
                  SizedBox(width: 28.w,),
                  Text('2'),
                  w1,
                  Text('30.5')
                ],
              ),
            ),

          ],
        ),
      )
  );
}

Widget Live3(){
  return Container(
      width: 350.w,
      height: 91.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Card(
        child: Column(
          children: [
            Container(
              height: 40.h,
              width: 330.w,
              decoration:  BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text('BOWLER',style: style6(),),
                    SizedBox(width: 86.w,),
                    Text('O',style: style6(),),
                    w1,
                    Text('M',style: style6()),
                    w1,
                    Text('R',style: style6()),
                    w1,
                    Text('W',style: style6()),
                    w1,
                    Text('ECO',style: style6())

                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                   Icon(Icons.sports_baseball,color: Colors.blue[900],),
                  const Text(' Tendai Chatara'),
                  SizedBox(width: 37.w,),
                  Text('5'),
                  SizedBox(width: 25.w,),
                  Text('0'),
                  SizedBox(width: 22.w,),
                  Text('45'),
                  w1,
                  Text('1'),
                  SizedBox(width: 25.w,),
                  Text('3.25')
                ],
              ),
            ),


          ],
        ),
      )
  );
}


Widget Live1(){
  return Container(
    height: 180.h,
    width: 350.w,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(20)
    ),
    child: Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:  EdgeInsets.only(left: 15.0),
                child:  Text('3rd Match, ODI',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              ),
              Container(
                width: 70.w,
                height: 20.h,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(CupertinoIcons.dot_radiowaves_left_right,color: Colors.white,),
                    SizedBox(width: 8,),
                    Text('LIVE',style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    h1,
                    Image.network('https://enkoeducation.com/wp-content/uploads/2018/06/zimbabwe.png',width: 60,height: 60,),
                    SizedBox(height: 5.h,),
                    Text('ZIMBABWE',style: style5(),),
                    SizedBox(height: 5.h,),
                    RichText(
                      text:  TextSpan(
                        children:  <TextSpan>[
                          TextSpan(text: '150/10 ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.sp)),
                          const TextSpan(text: '(20 over)',style: TextStyle(color:Colors.grey,)),
                        ],
                      ),
                    )
                  ],
                ),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4__GNsQ7uR6xc6treKKufNp4AQEPJysqnNnOfiqVY7QmBZ1Vw1ecOJwpbhdCbpcBIHss&usqp=CAU',width: 35,height: 35,),
                Column(
                  children: [
                    h1,
                    Image.network('https://a.espncdn.com/i/teamlogos/cricket/500/29.png',width: 60,height: 60,),
                    SizedBox(height: 5.h,),
                    Text('IRELAND',style: style5(),),
                    SizedBox(height: 5.h,),

                    RichText(
                      text:  TextSpan(
                        children:  <TextSpan>[
                          TextSpan(text: '75/2 ', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.sp)),
                          const TextSpan(text: '(10.5 Over)',style: TextStyle(color:Colors.grey,)),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text:  TextSpan(
                    children:  <TextSpan>[
                      const TextSpan(text: 'CRR : ',style: TextStyle(color:Colors.grey,fontSize: 15)),
                      TextSpan(text: ' 3.39', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp)),
                    ],
                  ),
                ),

                h1,

                Row(
                  children:  [
                     Text('Over : ',style: TextStyle(color:Colors.grey,fontSize: 15)),

                    Container(
                      height: 15,
                      width: 15,
                      decoration:  BoxDecoration(
                        color: Colors.blue[900],
                        shape: BoxShape.circle,

                      ),
                      child: const Center(child: Text('6',style: TextStyle(color: Colors.white,fontSize: 8),),),
                    ),

                    SizedBox(width: 5.w,),

                    Container(
                      height: 15,
                      width: 15,
                      decoration:  BoxDecoration(
                        color: Colors.blue[900],
                        shape: BoxShape.circle,

                      ),
                      child: const Center(child: Text('4',style: TextStyle(color: Colors.white,fontSize: 8)),),
                    ),

                    SizedBox(width: 5.w,),

                    Container(
                      height: 15,
                      width: 15,
                      decoration:  BoxDecoration(
                        color: Colors.blue[900],
                        shape: BoxShape.circle,

                      ),
                      child: const Center(child: Text('1',style: TextStyle(color: Colors.white,fontSize: 8)),),
                    ),

                    SizedBox(width: 5.w,),

                    Container(
                      height: 15,
                      width: 15,
                      decoration:  BoxDecoration(
                        color: Colors.blue[900],
                        shape: BoxShape.circle,

                      ),
                      child: const Center(child: Text('-',style: TextStyle(color: Colors.white,fontSize: 8)),),
                    ),

                    SizedBox(width: 5.w,),

                    Container(
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,

                      ),
                      child: const Center(child: Text('W',style: TextStyle(color: Colors.white,fontSize: 8)),),
                    ),

                    SizedBox(width: 5.w,),

                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: const Center(child: Text(''),),
                    ),

                  ],
                ),

                RichText(
                  text:  TextSpan(
                    children:  <TextSpan>[
                      const TextSpan(text: 'Extra : ',style: TextStyle(color:Colors.grey,fontSize: 15)),
                      TextSpan(text: ' 5', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp)),
                    ],
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

class AllLive extends StatelessWidget {
  const AllLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Live1(),
              h1,
              Live2(),
              h1,
              Live3(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RichText(
                          text:  TextSpan(
                            children:  <TextSpan>[
                              const TextSpan(text: 'Partnership : ',style: TextStyle(color:Colors.grey,fontSize: 15)),
                              TextSpan(text: ' 22(30)', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp)),
                            ],
                          ),
                        ),
                      ],
                    ),

                    h1,

                    Row(
                      children: [
                        RichText(
                          text:  TextSpan(
                            children:  <TextSpan>[
                              const TextSpan(text: 'Last Wicket : ',style: TextStyle(color:Colors.grey,fontSize: 15)),
                              TextSpan(text: 'Andrew Balbirnie lbw b Tendai Chatara in', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp,),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children:  [
                        w1,
                        w1,
                        w1,
                        w1,
                        Text('(10.5 Ov.)',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp,)),
                      ],
                    ),

                    h1,

                    Row(
                      children: [
                        RichText(
                          text:  TextSpan(
                            children:  <TextSpan>[
                              const TextSpan(text: 'Recent Balls : ',style: TextStyle(color:Colors.grey,fontSize: 15)),
                              TextSpan(text: '... | 0 0 0 2 0 1 | 6 4 2 2 1 2)', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13.sp)),
                            ],
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}





