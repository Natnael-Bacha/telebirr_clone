import 'package:flutter/material.dart';




class cardImage extends  StatefulWidget{

final String text; 
final String imageName;

cardImage({required this.text, required this.imageName});

 @override
  _cardImageState createState() => _cardImageState();
}

class _cardImageState extends State<cardImage>{
  String icon = 'camera';
  
   @override
  Widget build(BuildContext context) {

    return Container(
      width:100,
      child: Card(    color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                       
                        height: 105,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          

                            
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/${widget.imageName}'),
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