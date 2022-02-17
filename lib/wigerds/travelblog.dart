import 'package:flutter/material.dart';
import 'package:uil/models/travel.dart';

class TravelBlog extends StatelessWidget {

  final _list = Travel.genereteTravelBlog();
  final _pgctrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pgctrl,
      itemCount: _list.length,
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index){
        var travel=_list[index];
        return Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15,right: 20,bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(travel.image),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Positioned(
              bottom: 70,left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(travel.name,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text(travel.location,style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Positioned(
              bottom: 40,right: 20,
              child: Container(
                height: 40,width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Icon(Icons.arrow_forward,color: Colors.black,),
              ),
            ),
          ],
        );
      },
    );
  }
}
