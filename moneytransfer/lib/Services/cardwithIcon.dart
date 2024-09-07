import 'package:flutter/material.dart';



class cardIcon extends  StatefulWidget{

final String text; 
final IconData iconName;

cardIcon({required this.text, required this.iconName});

 @override
  _cardIconState createState() => _cardIconState();
}

class _cardIconState extends State<cardIcon>{
  String icon = 'camera';
  
   @override
  Widget build(BuildContext context) {

    return Container(
      width:100,
      child: Card(   
        color: Colors.white, 
                     elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                       
                        height: 105,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(widget.iconName,
                            color: Color(0xff8CD044),
                            ),
                             
                          
                            SizedBox(
                              height: 15,
                            ),
                            Text(  widget.text,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
    );
  }
}