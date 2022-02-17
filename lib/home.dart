import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uil/wigerds/most_popular.dart';
import 'package:uil/wigerds/travelblog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.menu,color: Colors.black,),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Travel Blog',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
          ),
          Expanded(
            flex: 2,
            child: TravelBlog(),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Most Popular',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.red),),
                Text('View All',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red),),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: MostPopular(),
          ),
        ],
      ),
    );
  }
}
