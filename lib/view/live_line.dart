import 'package:cricketmazza/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Live Line',style: style1(),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
      ),

      body: Column(
      ),
    );
  }
}
