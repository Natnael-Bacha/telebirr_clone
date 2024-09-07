import 'package:flutter/material.dart';
import 'package:moneytransfer/Services/cardwithIcon.dart';
import 'package:moneytransfer/Services/cardwithimage.dart';
import 'package:moneytransfer/Services/buttomNavBar.dart';
import 'package:moneytransfer/Services/slider.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  cardIcon cardsendmoney = cardIcon(
      text: 'Send Money', iconName: Icons.account_balance_wallet_outlined);
  cardIcon cardcashinout =
      cardIcon(text: 'Cash In/Out', iconName: Icons.add_task_sharp);
  cardIcon cardairtime = cardIcon(
      text: 'Airtime Package', iconName: Icons.add_to_home_screen_sharp);
  cardIcon cardrequest = cardIcon(
      text: 'Request Money', iconName: Icons.arrow_circle_down_outlined);
  cardIcon cardpay =
      cardIcon(text: 'Pay For Merchant', iconName: Icons.add_business_outlined);
  cardIcon cardtransfer = cardIcon(
      text: 'Transfer To Bank', iconName: Icons.account_balance_outlined);
  cardIcon cardschedule =
      cardIcon(text: 'Schedule Payment', iconName: Icons.calendar_month);
  cardIcon cardmore =
      cardIcon(text: 'More', iconName: Icons.add_circle_outline_outlined);
  cardImage cardCbe =
      cardImage(text: 'Financial Service with CBE', imageName: 'CBE.png');
  cardImage cardDashen =
      cardImage(text: 'Financial Service with Dashen', imageName: 'dashen.png');
  cardImage cardOlympic =
      cardImage(text: 'Olympic Concert 2024', imageName: 'olympic.png');
  cardImage cardadwa =
      cardImage(text: 'National ID (Fayda)', imageName: 'adwa.png');
  cardImage cardTeletv =
      cardImage(text: 'Adwa Victory Museum', imageName: 'teletv.png');
  cardImage cardid =
      cardImage(text: 'National ID (Fayda)', imageName: 'id.png');
  cardImage cardone =
      cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png');
  cardImage cardtwo =
      cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png');
  cardImage cardthree =
      cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png');
  cardImage cardfour =
      cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png');
  cardImage cardfive =
      cardImage(text: 'pay Water Utility', imageName: 'Ethwater.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Color(0xff8CD044),
         actions: <Widget>[
            
            Expanded(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text('Apps',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
                ),

                
              
               ],
              ),
            ),
              Row(
                  children: [
                    Icon(
                      Icons.search,
                       color: Colors.white,
                       size: 30
                    ),
                  ],
                )
         ]
      ),
      body: ListView(
        children: [
          Wrap(
            direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          spacing: 8,
                          runSpacing: 8,
            children: [
              cardone,
              cardtwo,
              cardthree,
              cardfour,
              cardfive,
              cardCbe,
              cardDashen,
              cardOlympic,
              SliderImage(),
              cardTeletv,
              cardadwa,
              cardairtime,
              cardcashinout,
               cardthree,
              cardfour,
              cardfive,
              cardCbe,
              cardDashen,
              cardOlympic,
              cardTeletv,
              cardDashen,
              cardOlympic,
              cardTeletv,
              cardadwa,
              cardairtime,
              cardcashinout,
              cardthree,
              cardfour,
              cardfive,
            ],
        )],
      ),
      bottomNavigationBar: Navbar(indexNav: 2),
    );
  }
}
