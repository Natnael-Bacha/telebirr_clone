import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';

// ignore: must_be_immutable
class SliderImage extends StatefulWidget {

  


 

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<SliderImage> {
final   List<String> items = [
  'assets/slider1.png',
   'assets/slider2.png',
   'assets/slider3.png',
   'assets/slider4.png',
  

  
  
  
   
];

int currentIndex = 0;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FanCarouselImageSlider.sliderType1(
               isAssets: true,
              imagesLink: items, 
              autoPlay: true,
              sliderHeight: 120,
              sliderWidth: 800,
              imageRadius: 8,
              sliderDuration: const Duration(seconds: 1),
              currentItemShadow: const [],
              indicatorActiveColor: Color(0xff8CD044),
              indicatorDeactiveColor: Color(0xff8CD044),
              imageFitMode: BoxFit.cover,
              ),
          
          ],
        )
      ),
    );
        
      
    
  }
}