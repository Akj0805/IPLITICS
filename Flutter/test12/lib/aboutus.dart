import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/bab1.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/contactus.dart';
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
class aboutus extends StatefulWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  _aboutusState createState() =>
      _aboutusState();



}

class _aboutusState extends State<aboutus>
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




                // width:  1000,
                // height:  900,
                // decoration:  BoxDecoration (
                //   color:  Color(0xffffffff),
                // ),

                    Positioned(
                      left:  11,
                      top:  296,
                      child:
                      Container(
                        // width:  347,//image your team
                        // height:  147,
                        child:
                        Row(
                          //crossAxisAlignment:  CrossAxisAlignment.start,
                          children:  [
                            Container(
                              margin:  EdgeInsets.fromLTRB(0, 0, 14, 0),
                              child:
                              Column(
                                crossAxisAlignment:  CrossAxisAlignment.start,
                                children:  [
                                  Container(
                                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 14),
                                    child:
                                    Text(
                                      'OUR CULTURE',
                                      style:  GoogleFonts.alegreya (
                                        // 'Alegreya',
                                        fontSize:  10,
                                        fontWeight:  FontWeight.w400,
                                        height:  1.36,
                                        color:  Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // teamworkmakesthedreamworkdPE (0:70)
                                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 8),
                                    constraints:  BoxConstraints (
                                      maxWidth:  167,
                                    ),
                                    child:
                                    Text(
                                      'TEAMWORK MAKES THE DREAM WORK',
                                      style:  GoogleFonts.alegreya (
                                        // 'Alegreya',
                                        fontSize:  16,
                                        fontWeight:  FontWeight.w700,
                                        height:  1.36,
                                        color:  Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // ourcultureservesasthejerseytha (0:71)
                                    constraints:  BoxConstraints (
                                      maxWidth:  238,
                                    ),
                                    child:
                                    Text(
                                      '"Our culture serves as the jersey that binds our team together within IPLitics. Also, our strategy is what will keep our expansion going." ',
                                      style:  GoogleFonts.alegreya (
                                        // 'Alegreya',
                                        fontSize:  10,
                                        fontWeight:  FontWeight.w500,
                                        height:  1.36,
                                        color:  Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // image101w2Y (0:63)
                              width:  132,
                              height:  137,
                              child:
                              Image.asset(
                                  "images/image1111.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroup5kwpTFn (242VYPWozwjoTL2qJB5KWp)
                      left:  0,
                      top:  0,
                      // right:0,
                      child:
                      Container(
                        padding:  EdgeInsets.fromLTRB(8, 32, 0, 0),
                        width:  450,
                        height:  283,
                        child:
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // ipliticswgk (0:97)
                              margin:  EdgeInsets.fromLTRB(230, 0, 0, 0),
                              child:
                              Text(
                                'IPLitics',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  25,
                                  fontWeight:  FontWeight.w800,
                                  height:  1.36,
                                  color:  Color(0xff4b4b87),
                                ),
                              ),
                            ),
                            Container(
                              // ourvisionUAt (0:65)
                              margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child:
                              Text(
                                'Our Vision\n',
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  26,
                                  fontWeight:  FontWeight.w700,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              child:
                              Row(
                                crossAxisAlignment:  CrossAxisAlignment.start,
                                children:  [
                                  Container(
                                    // image102MEg (0:64)
                                    margin:  EdgeInsets.fromLTRB(0, 0, 12, 0),
                                    width:  183,
                                    height:  123,
                                    child:
                                    Image.asset(
                                      "images/imageipl.png",
                                      fit:  BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    // autogroupjnjc4un (242TpXDYkk6K4Ke9QnJnJc)
                                    child:
                                    Column(
                                      crossAxisAlignment:  CrossAxisAlignment.start,
                                      children:  [
                                        Container(
                                          // enhancingsportsQye (0:66)
                                          margin:  EdgeInsets.fromLTRB(3, 0, 0, 0),
                                          child:
                                          Text(
                                            'Enhancing SPORTS',
                                            style:  GoogleFonts.alegreya (
                                              // 'Alegreya',
                                              fontSize:  16,
                                              fontWeight:  FontWeight.w700,
                                              height:  1.36,
                                              color:  Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          constraints:  BoxConstraints (
                                            maxWidth:  197,
                                          ),
                                          child:
                                          Text(
                                            '"We are happy to continuously provide the most cutting-edge offerings to our expanding community of ardent sports enthusiasts and to contribute to the overall growth of the Indian sports ecosystem."',
                                            style:  GoogleFonts.alegreya (
                                              // 'Alegreya',
                                              fontSize:  10,
                                              fontWeight:  FontWeight.w500,
                                              height:  1.36,
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // line6M1i (0:68)
                      left:  0,
                      top:  283,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  410,
                          height:  1,
                          child:
                          Container(
                            decoration:  BoxDecoration (
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ourcaptainsrUG (0:72)
                      left:  8,
                      top:  459,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  109,
                          height:  22,
                          child:
                          Text(
                            'OUR CAPTAINS',
                            style:  GoogleFonts.alegreya (
                              // 'Alegreya',
                              fontSize:  16,
                              fontWeight:  FontWeight.w700,
                              height:  1.36,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // meetthepeoplewhoempowereverypl (0:73)
                      left:  8,
                      top:  487,
                      child:
                      Align(
                        child:
                        SizedBox(
                          width:  187,
                          height:  28,
                          child:
                          Text(
                            'Meet the people who empower every player to perform their best.',
                            style:  GoogleFonts.alegreya (
                              // 'Alegreya',
                              fontSize:  10,
                              fontWeight:  FontWeight.w500,
                              height:  1.36,
                              color:  Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // autogroup1sweef2 (242Vw3XjBm5Uqd9aQB1swe)
                      left:  0,
                      top:  515,
                      child:
                      Container(
                        padding:  EdgeInsets.fromLTRB(13, 15, 0, 43),
                        width:  400,
                        height:  285,
                        child:
                        Column(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                        Container(
                        // autogroupgpbvNL8 (242UU196TEwW471xqdgPBv)
                        margin:  EdgeInsets.fromLTRB(0, 0, 0, 2),
                        width:  double.infinity,
                        child:
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                          children:  [
                            Container(
                              // ellipse6JUg (0:74)
                              margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                              width:  59,
                              height:  58,
                              child:
                              Image.asset(
                                "images/ridit.png",
                                width:  59,
                                height:  58,
                              ),
                            ),
                            Container(
                              // ellipse14pxp (0:82)
                              margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                              width:  59,
                              height:  58,
                              child:
                              Image.asset(
                                "images/akj.png",
                                width:  59,
                                height:  58,
                              ),
                            ),
                            Container(
                              // ellipse12vkx (0:80)
                              margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                              width:  59,
                              height:  58,
                              child:
                              Image.asset(
                                "images/priyansh.png",
                                width:  59,
                                height:  58,
                              ),
                            ),
                            Container(
                              // ellipse10cdn (0:78)
                              margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                              width:  59,
                              height:  58,
                              child:
                              Image.asset(
                                "images/akshat.png",
                                width:  59,
                                height:  58,
                              ),
                            ),
                            Container(
                              // ellipse89Np (0:76)
                              width:  59,
                              height:  58,
                              child:
                              Image.asset(
                                "images/aditi.png",
                                width:  59,
                                height:  58,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupqcv4tbJ (242UkfL1D1z2ig5DUTQCv4)
                        margin:  EdgeInsets.fromLTRB(10.5, 0, 12.5, 3),
                        width:  double.infinity,
                        child:
                        Row(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children:  [
                            Container(
                              margin:  EdgeInsets.fromLTRB(6, 3, 23, 0),
                              child:
                              Text(
                                'Ridit',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // akshaykumarjain7U4 (0:85)
                              margin:  EdgeInsets.fromLTRB(26, 2, 27, 0),
                              constraints:  BoxConstraints (
                                maxWidth:  47,
                              ),
                              child:
                              Text(
                                'Akshay',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // priyanshjaindBW (0:86)
                              margin:  EdgeInsets.fromLTRB(7, 1, 34.5, 0),
                              constraints:  BoxConstraints (
                                maxWidth:  44,
                              ),
                              child:
                              Text(
                                'Priyansh',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // akshatmanohar9Qk (0:87)
                              margin:  EdgeInsets.fromLTRB(0, 0, 41.5, 0),
                              constraints:  BoxConstraints (
                                maxWidth:  38,
                              ),
                              child:
                              Text(
                                'Akshat',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // margin:  EdgeInsets.fromLTRB(0, 0, 51.5, 0),

                              // aditisinghesJ (0:88)
                              constraints:  BoxConstraints (
                                maxWidth:  24,
                              ),
                              child:
                              Text(
                                'Aditi',
                                textAlign:  TextAlign.center,
                                style:  GoogleFonts.alegreya (
                                  // 'Alegreya',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w400,
                                  height:  1.36,
                                  color:  Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupbeggk9e (242V1zDoRTBdte1FLaBeGG)
                        margin:  EdgeInsets.fromLTRB(0, 20, 0, 8),
                        width:  double.infinity,
                        child:
                        Row(
                            crossAxisAlignment:  CrossAxisAlignment.center,
                            children:  [
                        Container(
                        // ellipse15sVA (0:83)
                        margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                        width:  58,
                        height:  58,
                        decoration:  BoxDecoration (
                            borderRadius:  BorderRadius.circular(29),
                            border:  Border.all(color: Color(0xff000000)),
                        image:  DecorationImage (
                          fit:  BoxFit.cover,
                          image:  AssetImage (
                             "images/runishka.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // ellipse13Ngp (0:81)
                      margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                      width:  59,
                      height:  58,
                      child:
                      Image.asset(
                      "images/ashi.png",
                        width:  59,
                        height:  58,
                      ),
                    ),
                    Container(
                      // ellipse11JqN (0:79)
                      margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                      width:  59,
                      height:  58,
                      child:
                      Image.asset(
                        "images/lavanya.png",
                        width:  59,
                        height:  58,
                      ),
                    ),
                    Container(
                      // ellipse9Sgg (0:77)
                      margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                      width:  59,
                      height:  58,
                      child:
                      Image.asset(
                        "images/vishav.png",
                        width:  59,
                        height:  58,
                      ),
                    ),
                    Container(
                      // ellipse7myr (0:75)
                      width:  59,
                      height:  58,
                      child:
                      Image.asset(
                        "images/prashant.png",
                        width:  59,
                        height:  58,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroup6jrcKEg (242VEeXNZChQ5PgqfH6Jrc)
                margin:  EdgeInsets.fromLTRB(9.5, 0, 9.5, 0),
                width:  double.infinity,
                child:
                Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // runishkaraoenk (0:89)
                      margin:  EdgeInsets.fromLTRB(0, 0, 37, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  45,
                      ),
                      child:
                      Text(
                        'Runishka',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.alegreya (
                          // 'Alegreya',
                          fontSize:  10,
                          fontWeight:  FontWeight.w400,
                          height:  1.36,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // ashijainNTr (0:90)
                      margin:  EdgeInsets.fromLTRB(0, 0, 42, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  25,
                      ),
                      child:
                      Text(
                        'Ashi',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.alegreya (
                          // 'Alegreya',
                          fontSize:  10,
                          fontWeight:  FontWeight.w400,
                          height:  1.36,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // lavanyaanandeRN (0:91)
                      margin:  EdgeInsets.fromLTRB(0, 0, 35.5, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  42,
                      ),
                      child:
                      Text(
                        'Lavanya',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.alegreya (
                          // 'Alegreya',
                          fontSize:  10,
                          fontWeight:  FontWeight.w400,
                          height:  1.36,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // vishavgargXVA (0:92)
                      margin:  EdgeInsets.fromLTRB(0, 0, 35.5, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  34,
                      ),
                      child:
                      Text(
                        'Vishav',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.alegreya (
                          // 'Alegreya',
                          fontSize:  10,
                          fontWeight:  FontWeight.w400,
                          height:  1.36,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // prashantsharmaFAG (0:93)
                      constraints:  BoxConstraints (
                        maxWidth:  45,
                      ),
                      child:
                      Text(
                        'Prashant',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.alegreya (
                          // 'Alegreya',
                          fontSize:  10,
                          fontWeight:  FontWeight.w400,
                          height:  1.36,
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
      ),
      Positioned(
        // line7muJ (0:94)
        left:  0,
        top:  444.9999961853,
        child:
        Align(
          child:
          SizedBox(
            width:  420,
            height:  1,
            child:
            Container(
              decoration:  BoxDecoration (
                color:  Color(0xff000000),
              ),
            ),
          ),
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
              onPressed: () {},
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