import 'package:flutter/material.dart';

class Travel{

  String name;
  String location;
  String image;

  Travel(this.name,this.location,this.image);

  static List<Travel>genereteTravelBlog(){
    return[
      Travel('Sayedpur', 'Pocchim Para,,', 'image/alaka.JPG'),
      Travel('Cadet collage', 'Dhaka Tangail high Road', 'image/cadet.JPG'),
      Travel('SayedPur', 'Pocchim Para', 'image/para.JPG'),
      Travel('name', 'location', 'image/avatar.png'),
    ];
  }
  static List<Travel>MostPopular(){
    return[
      Travel('Bortola', 'Bortola', 'image/bastul.JPG'),
      Travel('Pokotia', 'Pakotia', 'image/jomidar.jpg'),
      Travel('Jol Kotir', 'Kailakur', 'image/kotir.jpg'),
      Travel('Rakerteki', 'Sayerpur', 'image/rakerteki.jpg'),
    ];
  }
}