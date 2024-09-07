import 'package:flutter/material.dart';
import 'package:moneytransfer/Services/cardwithIcon.dart';
import 'package:moneytransfer/Services/cardwithimage.dart';
import 'package:moneytransfer/Services/utility.dart';
import 'package:moneytransfer/Services/slider.dart';
import 'package:moneytransfer/Services/buttomNavBar.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
 
 List<Widget> card_list_one = [
    cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png'),
    cardImage(text: 'Pay Electric Utility', imageName: 'Ethelectric.png'),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Tax', iconName: Icons.attach_money_sharp),
    cardIcon(text: 'Government', iconName: Icons.account_balance_outlined),
    
  ];
  
   List<Widget> card_list_two = [
     cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Tax', iconName: Icons.attach_money_sharp),
    cardIcon(text: 'Government', iconName: Icons.account_balance_outlined),
  ];

    List<Widget> card_list_three = [
    cardImage(text: 'Pay Electric Utility', imageName: 'Ethelectric.png'),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Tax', iconName: Icons.attach_money_sharp),
    cardIcon(text: 'Government', iconName: Icons.account_balance_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: 
        [
          utility(name: 'Utility', card: card_list_one),
          utility(name: 'Tax and Government Service', card: card_list_two),
          utility(name: 'Tranport Service', card: card_list_three),
          utility(name: 'Entertainment Service', card: card_list_one),
          utility(name: 'E-commerce', card: card_list_two),
          utility(name: 'Event and Ticketing', card: card_list_three),
          utility(name: 'Education fee', card: card_list_two),
          utility(name: 'Fundraising', card: card_list_one),
          utility(name: 'Traffic Penality', card: card_list_three),
          SliderImage(),
          utility(name: 'Third party insurance', card: card_list_two),
          utility(name: 'Non Government Service', card: card_list_one),
        ]),
      ),
      
     bottomNavigationBar: Navbar(indexNav: 1,),
    );
  }
}
