import 'package:cricketmazza/constants/constants.dart';
import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text('Matches',style: style1(),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),

      body: Container(
        child: MatchesTabbar(),
      ),
    );
  }
}
