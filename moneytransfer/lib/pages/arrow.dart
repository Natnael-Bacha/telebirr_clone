import 'package:flutter/material.dart';

// ignore: must_be_immutable
class utility extends StatefulWidget {

late final String  name; 
late final List<Widget> card;

utility({required this.name,required this.card});

  @override
  _utilityState createState() => _utilityState();
}

class _utilityState extends State<utility> {


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.blue,
    body:  Card(
      elevation: 8,
       child: ExpansionTile(
         title: Text(widget.name),
         backgroundColor: Colors.grey,
         collapsedBackgroundColor: Colors.green,
         
           children:  <Widget>[
                IntrinsicWidth(
                  
                   stepWidth: double.infinity,
                  child: Card(
                    color: Colors.pink,
                    child: Card(
                          
                     
                     color: Colors.amber,
                      child: Wrap(
                       direction: Axis.horizontal,
                       alignment: WrapAlignment.start,
                      
                       children: 
                       widget.card.map((card)=>card).toList()
                      ),
                       
                    ),
                  ),
                )
                 
               
           ]
         ),
    ) );
  }
}