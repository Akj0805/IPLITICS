import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/contactus.dart';
import 'package:test12/cskinfo.dart';
import 'package:test12/dcinfo.dart';
import 'package:test12/dineshinfo.dart';
import 'package:test12/kkrinfo.dart';
import 'package:test12/klrahulinfo.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/miinfo.dart';
import 'package:test12/rcbinfo.dart';
import 'package:test12/rohitinfo.dart';
import 'package:test12/rrinfo.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/shikharinfo.dart';
import 'package:test12/viratinfo.dart';
import 'package:url_launcher/url_launcher.dart';


void main() => runApp(

  MaterialApp(
      debugShowCheckedModeBanner: false,

      home:CustomBottomNavigationBar()),
);
class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();



}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar>
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
                margin:  EdgeInsets.fromLTRB(270, 30, 0, 0),

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
                margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),

                height: 100,

                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){

                          Navigator.push(context,MaterialPageRoute(builder:(context)=> teamcskinfo()));


                        }, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/cskicon.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=> teamrrinfo()));}, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/rr.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=> teamrcbinfo()));}, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/rcbicon.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=> teamdcinfo()));}, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/dcicon.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=> teamkkrinfo()));}, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/kkricon.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context,MaterialPageRoute(builder:(context)=> teammiinfo()));}, // add links here for next page

                        child:Container(
                          width: 100,
                          // add images here
                          child: Image.asset(
                            'images/miicon.png',
                            fit: BoxFit.fitHeight,
                            //   // width: 300,
                            //   // height: 700,
                            //
                          ),
                          // child: Text("ListView 1",style:  TextStyle(fontSize: 32),)
                        ),
                      ),
                    ),
                  ],),),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 170, 0, 0),

                child: ListView(
                  children: [SizedBox(
                    height: 250.0,
                    width: double.infinity,
                    child: Carousel(
                      images: [

                        InkWell(onTap: (){

                          Navigator.push(context,MaterialPageRoute(builder:(context)=> playerviratinfo()));


                        }, child: Image.asset('images/image105.png',fit:BoxFit.cover),),
                        InkWell(onTap: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=> playerrohitinfo()));

                        }, child: Image.asset('images/image103.png',fit:BoxFit.cover),),
                        InkWell(onTap: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=> playerdineshinfo()));

                        }, child: Image.asset('images/image1042.png',fit:BoxFit.cover),),
                        InkWell(onTap: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=> playerklrahulinfo()));

                        }, child: Image.asset('images/image106.png',fit:BoxFit.cover),),
                        InkWell(onTap: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=> playershikharinfo()));

                        }, //child: Image.asset('images/image107.png',fit:BoxFit.cover),),
                        //InkWell(onTap: (){  Navigator.push(context,MaterialPageRoute(builder:(context)=> playerdineshinfo()));

                        //},
                          child: Image.asset('images/image107.png',fit:BoxFit.cover),),

                      ],
                    ),
                  )
                  ],
                ),),

              GestureDetector(
                onTap: (){

                  Navigator.push(context,MaterialPageRoute(builder:(context)=>liveipl()));


                },
                child:Container(
                  // group79CJa (1:66)
                  margin:  EdgeInsets.fromLTRB(14, 480, 12.5, 0),
                  padding:  EdgeInsets.fromLTRB(13.3, 0, 0.11, 5.85),
                  width:  double.infinity,
                  height:  135.23,
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
                        margin:  EdgeInsets.fromLTRB(0, 0.62, 0, 0),
                        child:
                        Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children:  [
                            Container(
                              // kkr175820ovsPP4 (1:69)
                              margin:  EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child:
                              Text(
                                "LIVE",
                                style:  GoogleFonts.poppins (
                                  fontSize:  21,
                                  fontWeight:  FontWeight.w900,
                                  height:  2.5,
                                  color:  Color(0xff4b4b87),
                                ),
                              ),
                            ),
                            Container(
                              // kkr175820ovsPP4 (1:69)
                              margin:  EdgeInsets.fromLTRB(0, 0, 0, 16),
                              child:
                              Text(
                                "Kolkata Knight Riders Inning 1  : 175-8(20 Ovs)",
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
                                "Sunrisers Hyderabad Inning 1  : 176-3(17.5Ovs)",

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
              ),
              GestureDetector(
                onTap: (){

                  Navigator.push(context,MaterialPageRoute(builder:(context)=>liveipl()));


                },
                child:Container(
                  // group311aA2 (1:62)
                  margin:  EdgeInsets.fromLTRB(15, 630, 5.5, 11),
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
                                text:  "Sunrisers Hyderabad",
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
                                text:  "bowl",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
                    }, // Image tapped
                    // splashColor: Colors.white10, // Splash color over image
                    child: Ink.image(
                      fit: BoxFit.cover, // Fixes border issues
                      width: 70,
                      height: 70,
                      image: AssetImage(
                        'images/home1.png',
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
                    onTap: () {  Navigator.push(context,MaterialPageRoute(builder:(context)=> bab1()));

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