import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uil/models/travel.dart';

class MostPopular extends StatelessWidget {

  final _list =Travel.MostPopular();
  final _pgctrl =PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _pgctrl,
      scrollDirection: Axis.horizontal,
      itemCount: _list.length,
      separatorBuilder: (_,index)=>SizedBox(width: 10,),
      itemBuilder: (context,index){
        var travel= _list[index];
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(travel.image),
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              bottom: 20,left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(travel.name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                  Text(travel.location,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
