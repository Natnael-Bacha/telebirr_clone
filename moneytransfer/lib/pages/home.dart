import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';
import 'package:moneytransfer/Services/cardwithIcon.dart';
import 'package:moneytransfer/Services/textBalance.dart';
import 'package:moneytransfer/Services/cardwithimage.dart';
import 'package:moneytransfer/Services/buttomNavBar.dart';
import 'package:moneytransfer/Services/slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SliderImage slider = SliderImage();
  final List<String> languages = [
    'English',
    'Oromifa',
    'Af Somali',
    'Tigrigna',
    'Amharic',
  ];
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

  Textbalance endekise = Textbalance(
    text: 'Endekise (ETB)',
    balance: '1000',
  );
  Textbalance reward = Textbalance(
    text: 'Reward (ETB)',
    balance: '500',
  );
  double iconSize = 15;
  String selectedValue = 'English';
  String balance = '******';
  bool isBalanceVisible = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:
          Colors.blue, // Set this to match your Scaffold background color
    ));

    return Scaffold(
      backgroundColor: Color(0xff8CD044),
      appBar: AppBar(
        backgroundColor: Color(0xff8CD044),
        toolbarHeight: 30,
        actions: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Image.asset(
                      'assets/eth.png',
                      width: 100,
                      height: 140,
                    ),
                  ),
                  Transform.scale(
                    scale: 1.5,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Expanded(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 130, 194, 57),
                        ),
                        child: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 55,
                        height: 20,
                        color: Color(0xff8CD044),
                        child: Marquee(
                          text: 'Selam Natnael',
                          style: TextStyle(color: Colors.white),
                          scrollAxis: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          blankSpace: 100.0,
                          velocity: 40,
                          pauseAfterRound: Duration(seconds: 2),
                          startPadding: 0.0,
                          accelerationCurve: Curves.linear,
                          decelerationCurve: Curves.linear,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            // Search Icon
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            // Notification Icon
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.notifications_none,
                              color: Color(0xffFFFFFF),
                            ),

                            SizedBox(
                              width: 1,
                            ),

                            //Language dropdownlist

                            DropdownButtonHideUnderline(
                                child: DropdownButton2(
                              hint: Container(
                                width: 50,
                                color: Color(0xff8CD044),
                                child: Marquee(
                                  text: selectedValue,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  scrollAxis: Axis.horizontal,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  blankSpace: 100,
                                  velocity: 45,
                                  pauseAfterRound: Duration(seconds: 2),
                                  startPadding: 2,
                                  accelerationCurve: Curves.linear,
                                  decelerationCurve: Curves.linear,
                                ),
                              ),
                              items: languages
                                  .map(
                                    (String item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        )),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                height: 30,
                                decoration:
                                    BoxDecoration(color: Color(0xff8CD044)),
                              ),
                              iconStyleData: IconStyleData(
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.white,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                ),
                                offset: const Offset(0, 120),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness: WidgetStateProperty.all<double>(6),
                                  thumbVisibility:
                                      WidgetStateProperty.all<bool>(true),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 25,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(26.0, 0, 0, 0),
                              child: Container(
                                child: Text(
                                  'Balance (ETB)',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (balance == '******') {
                                      balance = '12456.12';
                                      isBalanceVisible = true;
                                    } else {
                                      balance = '******';
                                      isBalanceVisible = false;
                                    }
                                    ;
                                  });
                                },
                                child: Icon(
                                  isBalanceVisible
                                      ? Icons.remove_red_eye
                                      : Icons.visibility_off,
                                  color: Colors.white,
                                  size: iconSize,
                                ),
                              ),
                            )
                          ]),
                    ),
                    Container(
                      height: 25,
                      child: Text(
                        balance,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 72,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: endekise,
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(28.5, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: reward,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                child: Container(
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.amber[700],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                  ),
                  child: Marquee(
                    text: 'ONE APP FOR ALL YOUR NEEDS!',
                    style: TextStyle(color: Colors.white),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    blankSpace: 300.0,
                    velocity: 40,
                    pauseAfterRound: Duration(seconds: 0),
                    startPadding: 0.0,
                    accelerationCurve: Curves.linear,
                    decelerationCurve: Curves.linear,
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff8f9fa),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0))),
                  height: 189,
                  child: ListView(
                    shrinkWrap: false,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Center(
                        child: Wrap(
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.start,
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              cardsendmoney,
                              cardcashinout,
                              cardairtime,
                              cardrequest,
                              cardDashen,
                              cardCbe,
                              slider,
                              TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Transaction Details ',
                                      style:
                                          TextStyle(color: Colors.blue[700]!),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      size: 12,
                                      color: Colors.blue[700]!,
                                    )
                                  ],
                                ),
                              ),
                              cardTeletv,
                              cardOlympic,
                              cardadwa,
                              cardid,
                              cardpay,
                              cardtransfer,
                              cardschedule,
                              cardmore,
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          width: 250,
                          child: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.qr_code_scanner_sharp,
                                      color: Colors.white,
                                    ),
                                    Text('Scan QR'),
                                  ],
                                )),
                              ],
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                                textStyle: WidgetStateProperty.all<TextStyle>(
                                    TextStyle(color: Colors.black)),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    Colors.blue[700]!),
                                foregroundColor: WidgetStateProperty.all<Color>(
                                    Colors.white),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                )),
                          )),
                    ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(
        indexNav: 0,
      ),
    );
  }
}
