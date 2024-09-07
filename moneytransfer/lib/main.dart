import 'package:flutter/material.dart';
import 'package:moneytransfer/pages/apps.dart';
import 'package:moneytransfer/pages/home.dart';
import 'package:moneytransfer/Services/textBalance.dart';
import 'package:moneytransfer/Services/cardwithIcon.dart';
import 'package:moneytransfer/Services/utility.dart';
import 'package:moneytransfer/pages/payment.dart';
import 'package:moneytransfer/Services/buttomNavBar.dart';

void main() {
  List<Widget> cards = [
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
    cardIcon(text: 'pay Ethiotelecom', iconName: Icons.payment),
  ];
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home':(context) => Home(),
      '/textbalance':(context) => Textbalance(text: 'Endekise (ETB)', balance: '1000',),
      '/card':(context) => cardIcon(text:'Send Money', iconName: Icons.account_balance_wallet_outlined),
      '/utility':(context) => utility(name: 'Utility', card: cards,),
       '/payment':(context) => Payment(),
        '/nav':(context) => Navbar(indexNav: 0,),
         '/apps':(context) => Apps(),
    }
  ));
}


