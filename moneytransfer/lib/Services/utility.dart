import 'package:flutter/material.dart';

class utility extends StatefulWidget {
  final String name;
  final List<Widget> card;

  utility({required this.name, required this.card});

  @override
  _utilityState createState() => _utilityState();
}

class _utilityState extends State<utility> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return 
   
         Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0,0,0,0),
                         child: Material(
                           elevation: 10,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.only(
                                   topLeft: isExpanded ? Radius.circular(15) : Radius.circular(15),
                                   topRight: isExpanded ? Radius.circular(15) : Radius.circular(15),
                                    bottomLeft: isExpanded ? Radius.circular(0) : Radius.circular(15),
                                     bottomRight: isExpanded ? Radius.circular(0) : Radius.circular(15),
                             ),
                           ),
                           child: Container(
                            
                             decoration: BoxDecoration(
                                               
                                   borderRadius: BorderRadius.only(
                                     topLeft: isExpanded ? Radius.circular(15) : Radius.circular(15),
                                     topRight: isExpanded ? Radius.circular(15) : Radius.circular(15),
                                     bottomLeft: isExpanded ? Radius.circular(0) : Radius.circular(15),
                                     bottomRight: isExpanded ? Radius.circular(0) : Radius.circular(15),
                                   ),
                                   color: isExpanded ? Colors.blue[400]! : Colors.white,
                             ),
                             child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Row(
                                     children: <Widget>[
                                       Text(widget.name),
                                       Expanded(
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.end,
                                           children: [
                                             InkWell(
                                               onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                                               },
                                               child: Icon(
                          isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down_outlined,
                          size: 24,
                          color: Colors.black,
                                               ),
                                               overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
                          if (states.contains(WidgetState.pressed)) {
                            return Colors.transparent;
                          }
                          return Colors.transparent;
                                               }),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                             ),
                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Container(
          child: isExpanded
              ? Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                    child: Material(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: AnimatedContainer(
                        
                        duration: Duration(seconds: 3),
                        height: 300,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        child: Wrap(
                                   direction: Axis.horizontal,
                                   alignment: WrapAlignment.start,
                                  
                                   children: 
                                   widget.card.map((card)=>card).toList()
                                  ),
                                    ),
                    ),
                  ),
                )
              : SizedBox(height: 10),
                           ),
                         ],
                       ),
                     ],
         );
    
  }
}