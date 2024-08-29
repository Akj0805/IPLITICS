import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/contactus.dart';

import 'package:test12/batsmanteam1.dart';
import 'package:test12/main.dart';
import 'package:test12/shikharinfo.dart';
import 'package:test12/viratinfo.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  HttpOverrides.global=MyHttpOverrides();


}

String stringResponse='a';
Map mapResponse =json.decode(stringResponse);
Map dataResponse =json.decode(stringResponse);
String team1ipl ="";
String team2ipl ="";
String tosswinner ="";
String tosschoice ="";


class liveipl extends StatefulWidget {
  const liveipl({Key? key}) : super(key: key);

  @override
  _liveiplState createState() =>
      _liveiplState();



}

class _liveiplState extends State<liveipl>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 200),
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, 0.5),
    end: const Offset(0, 0),
  ).animate(_animationController);

  int _selectedIndex = 0;
  bool _isMenuVisible = false;

  final List<Widget> _widgetOptions = [    Container(),    Container(),    Container(),    Container(),   Container(),    Container()  ];

  void _onItemTapped(int index) {
    if ( index == 5) {
      _toggleMenu();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _toggleMenu() {
    setState(() {
      _isMenuVisible = !_isMenuVisible;
    });
    if (_isMenuVisible) {
      _animationController.forward(from: 0);
    } else {
      _animationController.reverse(from: 1);
    }
  }

  void _hideMenu() {
    if (_isMenuVisible) {
      _toggleMenu();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        "https://api.cricapi.com/v1/match_scorecard?apikey=a0764c34-4fdd-4112-bfc4-82a5b7232e0e&offset=0&id=0b12f428-98ab-4009-831d-493d325bc555"));
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse=json.decode(response.body);
        dataResponse=mapResponse['data'];
        team1ipl=(dataResponse['score'])[0]['inning'].toString() +'  :  '+(dataResponse['score'])[0]['r'].toString()+'-'+(dataResponse['score'])[0]['w'].toString()+'('+(dataResponse['score'])[0]['o'].toString()+' Ovs)';
        print("team1ipl"+team1ipl);
        team2ipl=(dataResponse['score'])[1]['inning'].toString() +'  :  '+(dataResponse['score'])[1]['r'].toString()+'-'+(dataResponse['score'])[1]['w'].toString()+'('+(dataResponse['score'])[1]['o'].toString()+' Ovs)';
        print("team2ipl"+team2ipl);

        tosswinner =dataResponse['tossWinner'].toString();

        tosschoice =dataResponse['tossChoice'].toString();

      });
    }
  }

  @override
  void initState() {
    print("called");
    apicall();
    super.initState();
    print("done");
  }





  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: _hideMenu,
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [



              Container(
                // livepageBF4 (1:61)
                padding:  EdgeInsets.fromLTRB(0, 34.96, 14.5, 0),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // ipliticsRv6 (1:88)
                      margin:  EdgeInsets.fromLTRB(270, 10, 0, 19.04),
                      child:
                      Text(
                        'IPLitics',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.poppins (
                          fontSize:  25,
                          fontWeight:  FontWeight.w800,
                          height:  1.36,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // live72E (1:91)
                      margin:  EdgeInsets.fromLTRB(0, 0, 26.5, 10),
                      child:
                      Text(
                        'Live',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.poppins (
                          fontSize:  34,
                          fontWeight:  FontWeight.w700,
                          height:  1.5,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // group79CJa (1:66)
                      margin:  EdgeInsets.fromLTRB(14, 0, 12.5, 0),
                      padding:  EdgeInsets.fromLTRB(13.3, 15, 0.11, 5.85),
                      width:  double.infinity,
                      height:  115.23,
                      decoration:  BoxDecoration (
                        border:  Border.all( color: Color(0xff4b4b87)),
                        color:  Color(0xfff8f8ff),
                        borderRadius:  BorderRadius.circular(30),
                      ),
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroup4x6eegN (Gfudug9TRe3m3LzNNx4X6E)
                            margin:  EdgeInsets.fromLTRB(0, 15.62, 0, 0),
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // kkr175820ovsPP4 (1:69)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 16),
                                  child:
                                  Text(
                                    team1ipl,
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // srh1763175ovs74A (1:85)
                                  margin:  EdgeInsets.fromLTRB(0.7, 0, 0, 0),
                                  child:
                                  Text(
                                    team2ipl,

                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      // group311aA2 (1:62)
                      margin:  EdgeInsets.fromLTRB(0, 20, 5.5, 21),
                      padding:  EdgeInsets.fromLTRB(31, 17, 35, 23),
                      width:  368,
                      decoration:  BoxDecoration (
                        border:  Border.all(color :Color(0xff4b4b87)),
                        color:  Color(0xfff8f8ff),
                        borderRadius:  BorderRadius.circular(30),
                      ),
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // tosswinnersunrisershyderabadSx (1:64)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child:
                            RichText(
                              text:
                              TextSpan(
                                style:  GoogleFonts.poppins (
                                  fontSize:  15,
                                  fontWeight:  FontWeight.w500,
                                  height:  1.5,
                                  color:  Color(0xff000000),
                                ),
                                children:  [
                                  TextSpan(
                                    text:  "Toss Winner",
                                    style:  GoogleFonts.poppins (
                                      fontSize:  15,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                  TextSpan(
                                    text:  ' ',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  15,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text:  tosswinner,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // tosschoicebowlingw2W (1:65)
                            margin:  EdgeInsets.fromLTRB(1, 0, 0, 0),
                            child:
                            RichText(
                              text:
                              TextSpan(
                                style:  GoogleFonts.poppins (
                                  fontSize:  15,
                                  fontWeight:  FontWeight.w500,
                                  height:  1.5,
                                  color:  Color(0xff000000),
                                ),
                                children:  [
                                  TextSpan(
                                    text:  'Toss Choice ',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  15,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                  TextSpan(
                                    text:  ' ',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  15,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                  TextSpan(
                                    text:  tosschoice,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group82bWN (1:93)
                      margin:  EdgeInsets.fromLTRB(0, 0, 13.5, 20.42),
                      width:  368,
                      decoration:  BoxDecoration (
                        border:  Border.all(color :Color(0xff4b4b87)),
                        color:  Color(0xfff8f8ff),
                        borderRadius:  BorderRadius.circular(30),
                      ),
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroupb7caWNS (GfuetZgLF4F1HKchuab7cA)
                            padding:  EdgeInsets.fromLTRB(22, 16, 24, 12.33),
                            width:  double.infinity,
                            decoration:  BoxDecoration (
                              border:  Border.all(color :Color(0xff4b4b87)),
                              color:  Color(0xff4b4b87),
                              borderRadius:  BorderRadius.only (
                                topLeft:  Radius.circular(30),
                                topRight:  Radius.circular(30),
                              ),
                            ),
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // batternqk (1:96)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 69.23, 0.46),
                                  child:
                                  Text(
                                    'Batter',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rJp6 (1:97)
                                  margin:  EdgeInsets.fromLTRB(0, 0.46, 18.91, 0),
                                  child:
                                  Text(
                                    'R',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // bEhk (1:98)
                                  margin:  EdgeInsets.fromLTRB(0, 0.46, 17.86, 0),
                                  child:
                                  Text(
                                    'B',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // sAbQ (1:99)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 15, 0.46),
                                  child:
                                  Text(
                                    '4s',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // shLS (1:100)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 26, 0.46),
                                  child:
                                  Text(
                                    '6s',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // srbgi (1:107)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 0.46),
                                  child:
                                  Text(
                                    'SR',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogrouparia5rn (GfufJiekY8eyM3kKdNariA)
                            padding:  EdgeInsets.fromLTRB(20, 14.2, 17.27, 18.58),
                            width:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // autogroupmpzgQu4 (Gfuf6JqmFkzFwXuD5JMPZg)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 11.74),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.end,
                                    children:  [
                                      Container(
                                        // venkateshiyerYVU (1:101)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 37.19, 2.26),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting'])[0]['batsman'])['name'].toString(),
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // GRU (1:102)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 20.81, 0),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting']))[0]['r'].toString(),
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // awx (1:103)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 23.31, 0.26),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting']))[0]['b'].toString(),
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ioG (1:104)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 26.69, 0),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting']))[0]['4s'].toString(),
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ewp (1:105)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 28.73, 0.26),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting']))[0]['6s'].toString(),
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // zEz (1:106)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 0, 0.26),
                                        child:
                                        Text(
                                          (((dataResponse['scorecard'])[0]['batting']))[0]['sr'].toString(),
                                          textAlign:  TextAlign.right,
                                          style:  GoogleFonts.poppins (
                                            fontSize:  10.5,
                                            fontWeight:  FontWeight.w500,
                                            height:  1.5,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // bowledoutbytnatarajan5XL (1:108)
                                  margin:  EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['batting']))[0]['dismissal-text'].toString(),
                                    style:  GoogleFonts.poppins (
                                      fontSize:  10,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group82mux (1:110)
                      margin:  EdgeInsets.fromLTRB(0, 0, 9.5, 0),
                      padding:  EdgeInsets.fromLTRB(0, 0, 0, 20),
                      width:  368,
                      decoration:  BoxDecoration (
                        border:  Border.all(color :Color(0xff4b4b87)),
                        color:  Color(0xfff8f8ff),
                        borderRadius:  BorderRadius.circular(30),
                      ),
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroupwrk6fkS (GfufxHQVX67qwF4xymWrk6)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 14.2),
                            padding:  EdgeInsets.fromLTRB(22, 16, 15, 12.8),
                            width:  double.infinity,
                            decoration:  BoxDecoration (
                              border:  Border.all(color: Color(0xff4b4b87)),
                              color:  Color(0xff4b4b87),
                              borderRadius:  BorderRadius.only (
                                topLeft:  Radius.circular(30),
                                topRight:  Radius.circular(30),
                              ),
                            ),
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // bowlerwhx (1:113)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 55, 0),
                                  child:
                                  Text(
                                    'Bowler',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  14,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // orpv (1:114)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child:
                                  Text(
                                    'O',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  13.75,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // rC86 (1:115)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  child:
                                  Text(
                                    'R',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  13.75,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wXRG (1:116)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child:
                                  Text(
                                    'W',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  13.75,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // nbG7x (1:124)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
                                  child:
                                  Text(
                                    'NB',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  13.75,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wdYrA (1:125)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 14, 0),
                                  child:
                                  Text(
                                    'WD',
                                    style:  GoogleFonts.poppins (
                                      fontSize:  13.75,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // ecot9L (1:126)
                                  'ECO',
                                  style:  GoogleFonts.poppins (
                                    fontSize:  13.75,
                                    fontWeight:  FontWeight.w600,
                                    height:  1.5,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupbwjrEU6 (GfugCcKxL1wFzFf5mMbWJr)
                            margin:  EdgeInsets.fromLTRB(20, 0, 19, 0),
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // bhuvneshwarkumarmD8 (1:117)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 37, 0),
                                  constraints:  BoxConstraints (
                                    maxWidth:  72,
                                  ),
                                  child:
                                  Text(
                                    // (((dataResponse['scorecard'])[0]['bowling']))[0]['r'].toString(),
                                    (((dataResponse['scorecard'])[0]['bowling'])[0]['bowler'])['name'].toString(),
                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // fZQ (1:118)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 13, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['o'].toString(),
                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // oQi (1:119)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 16, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['r'].toString(),

                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // LfY (1:120)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 19, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['w'].toString(),

                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // sfU (1:122)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 27, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['nb'].toString(),

                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // cNA (1:121)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 34, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['wd'].toString(),

                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                                Container(
                                  // wQS (1:123)
                                  margin:  EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child:
                                  Text(
                                    (((dataResponse['scorecard'])[0]['bowling']))[0]['eco'].toString(),

                                    textAlign:  TextAlign.right,
                                    style:  GoogleFonts.poppins (
                                      fontSize:  10.5,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),





              Positioned.fill(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: _widgetOptions,
                ),
              ),
              if (_isMenuVisible)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  top:569,
                  child: SlideTransition(
                    position: _offsetAnimation,
                    child: MenuButton(
                      onPressed: _toggleMenu,
                    ),
                  ),
                ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  height: 70.0,
                  width: 70.0,
                  child: InkWell(
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> CustomBottomNavigationBar()));
                    }, // Image tapped
                    // splashColor: Colors.white10, // Splash color over image
                    child: Ink.image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 70,
                      height: 70,
                      image: AssetImage(
                        'images/home2.png',
                      ),
                    ),
                  )
              ),
              label:'',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 70.0,
                  width: 70.0,
                  child: InkWell(
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> batsmanteam1()));
                      // Navigator.push(context,MaterialPageRoute(builder:(context)=> CustomBottomNavigationBar11()));
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => batsmanteam1(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            var begin = Offset(0.0, 1.0);
                            var end = Offset.zero;
                            var curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    }, // Image tapped
                    // splashColor: Colors.white10, // Splash color over image
                    child: Ink.image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 70,
                      height: 70,
                      image: AssetImage(
                        'images/battle.png',
                      ),
                    ),
                  )
              ),
              label:'',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 70.0,
                  width: 70.0,
                  child: InkWell(
                    onTap: () { Navigator.push(context,MaterialPageRoute(builder:(context)=> Bowler()));

                    }, // Image tapped
                    // splashColor: Colors.white10, // Splash color over image
                    child: Ink.image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 70,
                      height: 70,
                      image: AssetImage(
                        'images/hurlers.png',
                      ),
                    ),
                  )
              ),
              label:'',
            ),
            BottomNavigationBarItem(
              icon: Container(
                  height: 70.0,
                  width: 70.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> bab1()));

                    }, // Image tapped
                    // splashColor: Colors.white10, // Splash color over image
                    child: Ink.image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 70,
                      height: 70,
                      image: AssetImage(
                        'images/bb.png',
                      ),
                    ),
                  )
              ),
              label:'',
            ),
            BottomNavigationBarItem( icon: Container(
                height: 70.0,
                width: 70.0,
                child: InkWell(
                  onTap: () {}, // Image tapped
                  // splashColor: Colors.white10, // Splash color over image
                  child: Ink.image(
                    fit: BoxFit.cover, // Fixes border issues
                    width: 70,
                    height: 70,
                    image: AssetImage(
                      'images/live1.png',
                    ),
                  ),
                )
            ),
              label:'',
            ),
            BottomNavigationBarItem(

              icon: Container(
                  height: 70.0,
                  width: 70.0,
                  child: Ink.image(
                    fit: BoxFit.cover, // Fixes border issues
                    width: 70,
                    height: 70,
                    image: AssetImage(
                      'images/more.png',
                    ),
                  )
              ),
              label: "",


            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedFontSize: 5.0,
          unselectedFontSize: 5.0,
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MenuButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(180,0,180,0),

            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              image: DecorationImage(
                image: AssetImage('images/abs.png'),
              ),
            ),
            child: IconButton(
              onPressed: () {

                Navigator.push(context,MaterialPageRoute(builder:(context)=> aboutus()));

              },
              icon: Text(''),

            ),
          ),
          Container(

            padding: const EdgeInsets.fromLTRB(180,0,180,0),

            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              image: DecorationImage(
                image: AssetImage('images/cs.png'),
              ),
            ),

            child: IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> contactus()));


              },
              icon: Text(''),
            ),

          ),
          Container(

            padding: const EdgeInsets.fromLTRB(180,0,180,0),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
              image: DecorationImage(
                image: AssetImage('images/tms.png'),
              ),
            ),




            child:IconButton(
              onPressed: () {
                print("h");
                String abbc="drive.google.com/file/d/1LvCAMTPTiQGByP8pfgczG52dpABeiNX5/view";
                _launchUrl(abbc);
                print("hh");

              },
              icon: Text(''),
            ),

          ),
        ],
      ),
    );

  }
  // Future<void> _launchUrl(String url2) async {
  //   final Uri uri =Uri(scheme: "https",host: url2);
  //   if (!await launchUrl(
  //     uri,
  //     mode:LaunchMode.externalApplication,
  //   )){
  //     throw "error";
  //
  //
  //   }
  // }
  Future<void> _launchUrl(String url2) async {
    final String url = 'https://$url2';
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "error";
    }
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}