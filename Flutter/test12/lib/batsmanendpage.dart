import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/batsmanteam2.dart';
import 'package:test12/contactus.dart';

import 'package:test12/cskinfo.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/main.dart';
import 'package:test12/team.dart';
import 'package:test12/viratinfo.dart';
import 'package:test12/function.dart';
import 'package:url_launcher/url_launcher.dart';



class batsmanendpage extends StatefulWidget {
  const batsmanendpage({Key? key}) : super(key: key);

  @override
  _batsmanendpageState createState() =>
      _batsmanendpageState();



}

class _batsmanendpageState extends State<batsmanendpage>
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
  String output11 = "";
  String output12 = "";
  String output13 = "";
  String output14 = "";
  String output15 = "";

  @override
  void initState() {
    super.initState();
    // Call a function here that updates the values of output and output2
    updateOutputs();
  }

  void updateOutputs() {
    output11 = output;
    output12 = output2;
    output13 = output3;
    output14 = output4;
    output15 = output5;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: _hideMenu,
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [

              // Container(
              //   padding: EdgeInsets.all(20),
              //     child: Text(
              //       output11 +" "+ output12,
              //
              //       style: TextStyle(fontSize: 40, color: Colors.green),
              //     )
              //
              //
              //
              // ),




              Container(
                // btdfinalnNA (1:61)
                padding:  EdgeInsets.fromLTRB(10, 5, 15, 0),
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children:  [
                    Container(
                      // ipliticsaDW (1:63)
                      margin:  EdgeInsets.fromLTRB(200, 30, 0, 14.82),
                      child: Text(
                        'IPLitics',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.abel (
                          // 'Alegreya',t
                          fontSize:  25,
                          fontWeight:  FontWeight.w800,
                          height:  1.36,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // batsmandemographicrRv (1:40)
                      margin:  EdgeInsets.fromLTRB(50, 0, 40.5, 0),
                      constraints:  BoxConstraints (

                      ),
                      child:
                      Text(
                        'Batsman\nDemographic',
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
                      // team1delhicapitalsPsk (1:68)
                      margin:  EdgeInsets.fromLTRB(0, 60, 1, 0),
                      padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),

                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  22,
                            fontWeight:  FontWeight.w500,

                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Team 1  ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontWeight:  FontWeight.w500,

                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  team1name,
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontWeight:  FontWeight.w500,

                                color:  Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // batsmanrishabhpantDkJ (1:69)
                      margin:  EdgeInsets.fromLTRB(0, 0, 1, 0),
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
                              text:  'Batsman ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  ' '+batsmanname+'\n',
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
                      // team2chennaisuperkingsaDU (1:67)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 2),
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
                              text:  ' '+teamname,
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
                      // predictedscore75GVc (1:70)
                      margin:  EdgeInsets.fromLTRB(0, 0, 2, 8),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  23,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  'Accuracy ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  23,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  output11,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // strikerate12044TKC (1:71)
                      margin:  EdgeInsets.fromLTRB(0, 0, 15, 25),
                      child:
                      RichText(
                        text:
                        TextSpan(
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  23,
                            fontWeight:  FontWeight.w500,
                            height:  1.5,
                            color:  Color(0xff000000),
                          ),
                          children:  [
                            TextSpan(
                              text:  ' ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  23,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                            TextSpan(
                              text:  ' ',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // autogroup2rduGGe (3jkhw4R3SiL5TR8syX2rdU)
                      margin:  EdgeInsets.fromLTRB(87, 0, 34, 0),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // runsCRC (1:73)
                            margin:  EdgeInsets.fromLTRB(0, 0, 90, 0),
                            child:
                            Text(
                              'Balls ',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  24,
                                fontWeight:  FontWeight.w600,
                                height:  1.5,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                          ),
                          Text(
                            // probabilityv6J (1:78)
                            'Runs',
                            style:  GoogleFonts.poppins (
                              // 'Poppins',
                              fontSize:  24,
                              fontWeight:  FontWeight.w600,
                              height:  1.5,
                              color:  Color(0xff4b4b87),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupd9caTrv (3jki78xanEmgFNWrgMd9ca)
                      margin:  EdgeInsets.fromLTRB(103, 0, 79, 20),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // oA6 (1:74)
                            margin:  EdgeInsets.fromLTRB(0, 0, 114, 0),
                            child:
                            Text(
                              '30',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // j3k (1:75)
                            output12,
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
                    Container(
                      // autogroupbrpzHb4 (3jkiJTy3NeSWwX5EEMbRpz)
                      margin:  EdgeInsets.fromLTRB(103, 0, 21, 0),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // Djc (1:77)
                            margin:  EdgeInsets.fromLTRB(0, 0, 122, 0),
                            child:
                            Text(
                              '60',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // 9NN (1:76)
                            output13,
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

                    Container(
                      // autogroupd9caTrv (3jki78xanEmgFNWrgMd9ca)
                      margin:  EdgeInsets.fromLTRB(103, 0, 79, 20),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // oA6 (1:74)
                            margin:  EdgeInsets.fromLTRB(0, 0, 114, 0),
                            child:
                            Text(
                              '90',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // j3k (1:75)
                            output14,
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
                    Container(
                      // autogroupd9caTrv (3jki78xanEmgFNWrgMd9ca)
                      margin:  EdgeInsets.fromLTRB(103, 0, 79, 20),
                      width:  double.infinity,
                      child:
                      Row(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // oA6 (1:74)
                            margin:  EdgeInsets.fromLTRB(0, 0, 104, 0),
                            child:
                            Text(
                              '120',
                              style:  GoogleFonts.poppins (
                                // 'Poppins',
                                fontSize:  22,
                                fontWeight:  FontWeight.w500,
                                height:  1.5,
                                color:  Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // j3k (1:75)
                            output15,
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
                        'images/battle1.png',
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