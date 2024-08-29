import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
//import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/bab2.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/contactus.dart';
//import 'package:test12/contactus.dart';
import 'package:test12/cskinfo.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/main.dart';
import 'package:test12/team.dart';
import 'package:test12/viratinfo.dart';
import 'package:url_launcher/url_launcher.dart';



class babendpage extends StatefulWidget {
  const babendpage({Key? key}) : super(key: key);

  @override
  _babendpageState createState() =>
      _babendpageState();



}

class _babendpageState extends State<babendpage>
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
        body: SingleChildScrollView(
          child: Stack(
            children: [


              Container(
                // bybfinalec6 (1:144)
                padding:  EdgeInsets.fromLTRB(14, 6, 14, 0),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children:  [
                    Container(
                      // ipliticsTqi (0:79)
                      margin:  EdgeInsets.fromLTRB(250.5, 25, 0, 0),
                      child:
                      Text(
                        'IPLitics',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.poppins (
                          // 'Alegreya',
                          fontSize:  25,
                          fontWeight:  FontWeight.w800,
                          height:  1.36,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // ballbyballanalysis9iY (0:64)
                      margin:  EdgeInsets.fromLTRB(90, 30, 34.5, 59),
                      constraints:  BoxConstraints (
                        maxWidth:  250,
                      ),
                      child:
                      Text(

                        'Ball by Ball \nAnalysis',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.poppins (
                          // 'Poppins',
                          fontSize:  34,
                          fontWeight:  FontWeight.w700,
                          height:  1.5,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),

                    Container(
                      // team1delhicapitalsVsc (1:159)
                      margin:  EdgeInsets.fromLTRB(4, 0, 0, 5),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  22,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Team 1  ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  team1,
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // batsmanrishabhpantXSv (1:160)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 6),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  22,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff4b4b87),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Batsman  ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  bbbatsmanname+'\n',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // team2chennaisuperkingsfSe (1:158)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  22,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Team 2 ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  team2,
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // bowlerravindrajadejaAGv (1:161)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 25),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  22,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff4b4b87),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Bowler  ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  bbbowlername,
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // group292WVC (1:162)
                      margin:  EdgeInsets.fromLTRB(40, 0, 41, 26),
                      width:  350,
                      height:  107,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children:  [
                          Container(
                            // autogrouphdflEg6 (SYZg2RPZ38a2WSysr4HDfL)
                            margin:  EdgeInsets.fromLTRB(0, 0, 50, 0),
                            width:  117,
                            height:  double.infinity,
                            child:
                            Stack(
                              children:  [
                                Positioned(
                                  // ballmvv (1:163)
                                  left:  0,
                                  top:  28,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  48,
                                      height:  30,
                                      child:
                                      Text(
                                        'Ball',
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w600,
                                          height:  1.5,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // typeofball5Av (1:164)
                                  left:  0,
                                  top:  77,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  117,
                                      height:  30,
                                      child:
                                      Text(
                                        'Ball Type',
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w600,
                                          height:  1.5,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // overyn6 (1:165)
                                  left:  0,
                                  top:  0,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  59,
                                      height:  30,
                                      child:
                                      Text(
                                        'Over',
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w600,
                                          height:  1.5,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // runhi6 (1:166)
                                  left:  0,
                                  top:  55,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  50,
                                      height:  40,
                                      child:
                                      Text(
                                        'Run',
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w600,
                                          height:  1.5,
                                          color:  Color(0xff4b4b87),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupjfc2S9t (SYZgJ5c8PQEN44hDQMJFc2)
                            width:  125,
                            height:  103,
                            child:
                            Stack(
                              children:  [
                                Positioned(
                                  // b2n (1:167)
                                  left:  37,
                                  top:  0,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  20,
                                      height:  30,
                                      child:
                                      Text(
                                        over,
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.5,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // 718 (1:168)
                                  left:  30,
                                  top:  46,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  50,
                                      height:  30,
                                      child:
                                      Text(
                                       "  "+ bbruns,
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.5,
                                          color:  Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // noballqC2 (1:169)
                                  left:  0,
                                  top:  73,
                                  child:
                                  Align(
                                    child:
                                    Text(
                                      bbtype,
                                      style:  GoogleFonts.poppins (
                                        // 'Poppins',
                                        fontSize:  20,
                                        fontWeight:  FontWeight.w500,
                                        height:  1.5,
                                        color:  Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // Z82 (1:170)
                                  left:  37,
                                  top:  22,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  13,
                                      height:  30,
                                      child:
                                      Text(
                                        ball,
                                        style:  GoogleFonts.poppins (
                                          // 'Poppins',
                                          fontSize:  20,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.5,
                                          color:  Color(0xff000000),
                                        ),
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
                    Container(
                      // commentary5s4 (1:171)
                      margin:  EdgeInsets.fromLTRB(6, 0, 0, 1),
                      child:
                      Text(
                        'Commentary:',
                        style:  GoogleFonts.poppins (
                          // 'Poppins',
                          fontSize:  22,
                          fontWeight:  FontWeight.w600,
                          height:  1.5,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // jadejatopantnorunonagoodlength (1:172)
                      margin:  EdgeInsets.fromLTRB(6, 0, 0, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  403,
                      ),
                      child:
                      Text(
                        bbcommentry,
                        style:  GoogleFonts.poppins (
                          // 'Poppins',
                          fontSize:  16,
                          fontWeight:  FontWeight.w400,
                          height:  1.5,
                          color:  Color(0xff000000),
                        ),
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
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> Bowler()));
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
                        'images/bb1.png',
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
              onPressed: () { Navigator.push(context,MaterialPageRoute(builder:(context)=> aboutus()));



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
                print("contact us clicked");

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