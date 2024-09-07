import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textbalance extends StatefulWidget {
  final text;
  String balance;
  late String  tempBalance;


  Textbalance({ required this.text , required this.balance}){
    tempBalance = balance;
  }

  @override
  _TextbalanceState createState() => _TextbalanceState();
}

class _TextbalanceState extends State<Textbalance> {

  bool isBalanceVisible = false;
  double iconSize = 15;
  String hiddenBalance = '******';
 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
         mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 20,
            child: Row(
              children: <Widget>[
                Text(widget.text,
                style:  TextStyle(
                color: Colors.white,
               ),
                ),
               

                Padding(
                  padding: const EdgeInsets.fromLTRB(7,0,0,0),
                  child: InkWell(
                  
                    onTap: (){ 
                      setState(() {
                        if (hiddenBalance == '******') {
                          hiddenBalance = widget.tempBalance;
                          isBalanceVisible = true;
                        } else {
                          hiddenBalance = '******';
                          isBalanceVisible = false;
                        }
                      });}, 
                       child: Icon(
                      isBalanceVisible ? Icons.remove_red_eye : Icons.visibility_off,
                      color: Colors.white,
                      size: iconSize,
                    ),
                    overlayColor: WidgetStateProperty.all<Color>(
                                    Colors.transparent),
                  ),
                )
               
              ],
            ),
          ),
           Text(hiddenBalance,
           style: TextStyle(
            color:Colors.white,
            fontSize:13,
            fontWeight: FontWeight.bold
            
                     ),
           ),
        ],

      ),
    );
  }
}