import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/main.dart';
import 'package:test12/team.dart';
import 'package:url_launcher/url_launcher.dart';


// void main() => runApp(
//   MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       home:CustomBottomNavigationBar()),
// );
  class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  _contactusState createState() =>
      _contactusState();



}

class _contactusState extends State<contactus>
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: _hideMenu,
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [


              Container(
                // contactushhA (1:76)
                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // autogroupdkncnTi (2UfX17CM9ukSMZRGM9dknC)
                      padding:  EdgeInsets.fromLTRB(38.5, 36, 14.5, 0),
                      width:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // ipliticsKCk (1:95)
                            margin:  EdgeInsets.fromLTRB(225, 0, 0, 21),
                            child:
                            Text(
                              'IPLitics',
                              textAlign:  TextAlign.center,
                              style:  GoogleFonts.alegreya   (
                                fontSize:  25,
                                fontWeight:  FontWeight.w800,
                                height:  1.36,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                          ),
                          Container(
                            // getintouchbvx (1:91)
                            margin:  EdgeInsets.fromLTRB(0, 0, 25, 0),
                            child:
                            Text(
                              'Get In Touch',
                              textAlign:  TextAlign.center,
                              style:   GoogleFonts.alegreya (
                                fontSize:  36,
                                fontWeight:  FontWeight.w700,
                                height:  0.9230769231,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // wewouldlovetohearfromyouourfri (1:92)
                            margin:  EdgeInsets.fromLTRB(0, 0, 22, 0),
                            constraints:  BoxConstraints (
                              maxWidth:  285,
                            ),
                            child:
                            Text(
                              'We would love to hear from you . Our friendly team is always here to chat',
                              textAlign:  TextAlign.center,
                              style:   GoogleFonts.openSans (
                                // 'Open Sans',
                                fontSize:  12,
                                fontWeight:  FontWeight.w700,
                                height:  2.1818181818,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupub6gzTJ (2UfWJNsDPWudDgBDv5Ub6g)
                      width:  double.infinity,
                      height:  543,
                      child:
                      Stack(
                        children:  [
                          Positioned(
                            // contactusXi8 (1:77)
                            left:  4,
                            top:  385,
                            child:
                            Container(
                              padding:  EdgeInsets.fromLTRB(0, 11, 0, 0),
                              width:  400,
                              height:  158,
                              decoration:  BoxDecoration (
                                color:  Color(0xffffffff),
                              ),
                              child:
                              Column(
                                crossAxisAlignment:  CrossAxisAlignment.center,
                                children:  [
                                  Container(
                                    // shareDax (1:81)
                                    margin:  EdgeInsets.fromLTRB(0, 20, 6, 0),

                                  ),
                                  Container(
                                    // autogroupdadw22c (2UfWecnVM2QWPzt1FJDaDW)
                                    width:  361,
                                    height:  38,
                                    child:
                                    Container(
                                      // cardNMN (1:88)
                                      padding:  EdgeInsets.fromLTRB(10, 7, 31, 6),
                                      width:  360,
                                      height:  double.infinity,
                                      decoration:  BoxDecoration (
                                        color:  Color(0xffffffff),
                                        boxShadow:  [
                                          BoxShadow(
                                            color:  Color(0x3f000000),
                                            offset:  Offset(0, 0.5),
                                            blurRadius:  0,
                                          ),
                                        ],
                                      ),
                                      child:
                                      Row(
                                        crossAxisAlignment:  CrossAxisAlignment.center,
                                        children:  [
                                          Container(
                                            // twitters3E (1:89)
                                            margin:  EdgeInsets.fromLTRB(0, 1, 220, 0),
                                            child:
                                            Text(
                                              'Twitter ',
                                              style:   GoogleFonts.openSans (
                                                // 'Open Sans',
                                                fontSize:  14,
                                                fontWeight:  FontWeight.w700,
                                                height:  1.7142857143,
                                                color:  Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // componentsocialbuttondarktwitt (1:90)
                                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 1),
                                            width:  24,
                                            height:  24,
                                            child:
                                            Image.asset(
                                              'images/twitter.png',
                                              width:  24,
                                              height:  24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // card5uz (1:83)
                                    padding:  EdgeInsets.fromLTRB(10, 8, 34, 6),
                                    width:  double.infinity,
                                    decoration:  BoxDecoration (
                                      color:  Color(0xffffffff),
                                      boxShadow:  [
                                        BoxShadow(
                                          color:  Color(0x3f000000),
                                          offset:  Offset(0, 0.5),
                                          blurRadius:  0,
                                        ),
                                      ],
                                    ),
                                    child:
                                    Row(
                                      crossAxisAlignment:  CrossAxisAlignment.center,
                                      children:  [
                                        Container(
                                          // facebookark (1:84)
                                          margin:  EdgeInsets.fromLTRB(0, 0, 228, 0),
                                          child:
                                          Text(
                                            'Facebook',
                                            style:   GoogleFonts.openSans (
                                              fontSize:  14,
                                              fontWeight:  FontWeight.w700,
                                              height:  1.7142857143,
                                              color:  Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // icons16pxfacebookKJY (1:85)
                                          margin:  EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          width:  18,
                                          height:  18,
                                          child:
                                         Image.asset(
                                           'images/facebook.png',
                                            width:  18,
                                            height:  18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // cardqXn (1:78)
                                    padding:  EdgeInsets.fromLTRB(10, 8, 31, 6),
                                    width:  double.infinity,
                                    decoration:  BoxDecoration (
                                      color:  Color(0xffffffff),
                                      boxShadow:  [
                                        BoxShadow(
                                          color:  Color(0x3f000000),
                                          offset:  Offset(0, 0.5),
                                          blurRadius:  0,
                                        ),
                                      ],
                                    ),
                                    child:
                                    Row(
                                      crossAxisAlignment:  CrossAxisAlignment.center,
                                      children:  [
                                        Container(
                                          // instagramkek (1:79)
                                          margin:  EdgeInsets.fromLTRB(0, 0, 223, 0),
                                          child:
                                          Text(
                                            'Instagram',
                                            style:   GoogleFonts.openSans (
                                              // 'Open Sans',
                                              fontSize:  14,
                                              fontWeight:  FontWeight.w700,
                                              height:  1.7142857143,
                                              color:  Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // componentsocialbuttondarkinsta (1:80)
                                          width:  24,
                                          height:  24,
                                          child:
                                          Image.asset(
                                           'images/insta.png',
                                            width:  24,
                                            height:  24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left:  0,
                            top:  0,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  384,
                                height:  408,
                                child:
                                Image.asset(
                                   'images/contactbats.png',
                                  fit:  BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left:  18,
                            top:  323,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  27,
                                height:  17,
                                child:
                               Image.asset(
                                  'images/imageaa.png',
                                  fit:  BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // image108p2L (1:100)
                            left:  18,
                            top:  230,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  26,
                                height:  23,
                                child:
                                Image.asset(
                                    'images/phone.png',
                                  fit:  BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // chattousourfriendlyteamisheret (1:101)
                            left:  56,
                            top:  46,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  116,
                                height:  97,
                                child:
                                RichText(
                                  text:
                                  TextSpan(
                                    style:   GoogleFonts.poppins (
                                      // 'Poppins',
                                      fontSize:  6,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                    children:  [
                                      TextSpan(
                                        text:  'Chat to us\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\nO',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'ur friendly team is here to help on whatsapp.\n\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '+91 9876767676\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  6,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  6,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // image107uE8 (1:102)
                            left:  17,
                            top:  136,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  31,
                                height:  24,
                                child:
                                Image.asset(
                                  'images/office.png',
                                  fit:  BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // officecomesayhelloatourofficeh (1:103)
                            left:  56,
                            top:  137,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  107,
                                height:  137,
                                child:
                                RichText(
                                  text:
                                  TextSpan(
                                    style:   GoogleFonts.poppins (
                                      // 'Poppins',
                                      fontSize:  11,
                                      fontWeight:  FontWeight.w600,
                                      height:  1.5,
                                      color:  Color(0xff4b4b87),
                                    ),
                                    children:  [
                                      TextSpan(
                                        text:  'Office\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  6,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Come say hello at our office HQ.\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\nBML Munjal University , NH 48, Kapriwas, Haryana 122413.\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n\n',
                                        style:   GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  6,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.5,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n\n\n',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // phonemonfrifrom8amto5pm9198767 (1:104)
                            left:  56,
                            top:  230,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  88,
                                height:  59,
                                child:
                                RichText(
                                  text:
                                  TextSpan(
                                    style:   GoogleFonts.abel (
                                      // 'Alegreya',
                                      fontSize:  11,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.3609999743,
                                      color:  Color(0xff000000),
                                    ),
                                    children:  [
                                      TextSpan(
                                        text:  'Phone \n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  6,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Mon-Fri from 8am to 5pm.\n\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '+91 9876767676\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // emailyoucanmailusonhiiplitics0 (1:105)
                            left:  56,
                            top:  322,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  61,
                                height:  96,
                                child:
                                RichText(
                                  text:
                                  TextSpan(
                                    style:   GoogleFonts.abel (
                                      // 'Alegreya',
                                      fontSize:  11,
                                      fontWeight:  FontWeight.w500,
                                      height:  1.36,
                                      color:  Color(0xff000000),
                                    ),
                                    children:  [
                                      TextSpan(
                                        text:  'Email\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  13,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  11,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'You can mail us on\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n ',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'hi@iplitics01.com\n',
                                        style:   GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  8,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.36,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '\n\n',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // image121Lxx (1:106)
                            left:  17,
                            top:  46,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  28,
                                height:  27,
                                child:
                                Image.asset(
                                  'images/image121.png',
                                  fit:  BoxFit.cover,
                                ),
                              ),
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
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> CustomBottomNavigationBar()));
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
                      // Navigator.push(
                      //   context,
                      //   PageRouteBuilder(
                      //     pageBuilder: (context, animation, secondaryAnimation) => CustomBottomNavigationBar11(),
                      //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      //       var begin = Offset(0.0, 1.0);
                      //       var end = Offset.zero;
                      //       var curve = Curves.ease;
                      //
                      //       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                      //
                      //       return SlideTransition(
                      //         position: animation.drive(tween),
                      //         child: child,
                      //       );
                      //     },
                      //   ),
                      // );
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
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> Bowler()));}, // Image tapped
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
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> liveipl()));
                  }, // Image tapped
                  // splashColor: Colors.white10, // Splash color over image
                  child: Ink.image(
                    fit: BoxFit.cover, // Fixes border issues
                    width: 70,
                    height: 70,
                    image: AssetImage(
                      'images/live.png',
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
                String abbc="drive.google.com/file/d/1LvCAMTPTiQGByP8pfgczG52dpABeiNX5/view";
                _launchUrl(abbc);
              },
              icon: Text(''),
            ),

          ),
        ],
      ),
    );
  }
  Future<void> _launchUrl(String url2) async {
    final String url = 'https://$url2';
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "error";
    }
  }
}