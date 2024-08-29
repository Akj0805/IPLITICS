import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
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
class playerdineshinfo extends StatefulWidget {
  const playerdineshinfo({Key? key}) : super(key: key);

  @override
  _playerdineshinfoState createState() =>
      _playerdineshinfoState();




}

class _playerdineshinfoState extends State<playerdineshinfo>
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
                // viratkohli82L (6:38)
                width:  double.infinity,
                decoration:  BoxDecoration (
                  color:  Color(0xffffffff),
                ),
                child:
                Column(
                  crossAxisAlignment:  CrossAxisAlignment.end,
                  children:  [
                    Container(
                      // autogroupzervE5N (PSx76C2pn65ivyRVytZERv)
                      padding:  EdgeInsets.fromLTRB(48.5, 8, 24.5, 0),
                      width:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children:  [
                          Container(
                            // ipliticsxXA (6:42)
                            margin:  EdgeInsets.fromLTRB(200, 20, 0, 0),
                            width:  double.infinity,
                            child:
                            Text(
                              'IPLitics',
                              textAlign:  TextAlign.center,
                              style:  GoogleFonts.abel (
                                // 'Alegreya',
                                fontSize:  25,
                                fontWeight:  FontWeight.w800,
                                height:  1.36,
                                color:  Color(0xff4b4b87),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupbp7jqqr (PSx6oCX8tUaTtkawetbp7J)
                            margin:  EdgeInsets.fromLTRB(0, 0, 41, 0),
                            width:  246,
                            height:  135,
                            child:
                            Stack(
                              children:  [
                                Positioned(
                                  // viratkohliANL (6:43)
                                  left:  40,
                                  top:  88,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  187,
                                      height:  47,
                                      child:
                                      Text(
                                        'Dinesh Karthik',
                                        textAlign:  TextAlign.center,
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  40,
                                          fontWeight:  FontWeight.w600,
                                          height:  1.1725,
                                          color:  Color(0xff01010e),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // iplstatsqUU (6:45)
                                  left:  10,
                                  top:  0,
                                  child:
                                  Align(
                                    child:
                                    SizedBox(
                                      width:  246,
                                      height:  89,
                                      child:
                                      Text(
                                        'IPL Stats',
                                        textAlign:  TextAlign.center,
                                        style:  GoogleFonts.abel (
                                          // 'Alegreya',
                                          fontSize:  65,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.36,
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
                      // autogroupvkjxjZr (PSx6xH6LpVdsZkd1HCVKJx)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width:  double.infinity,
                      height:  539,
                      child:
                      Stack(
                        children:  [
                          Positioned(
                            // rectangle684s2 (6:40)
                            left:  0,
                            top:  0,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  304,
                                height:  537,
                                child:
                                Container(
                                  decoration:  BoxDecoration (
                                    color:  Color(0xff4b4b87),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // image91b6G (6:41)
                            left:  0,
                            top:  0,
                            child:
                            Container(
                              margin:  EdgeInsets.fromLTRB(0, 0, 10, 9),

                              child:
                              SizedBox(
                                width:  600,
                                height:  539,
                                child:
                                Image.asset(
                                    'images/dk3.png'
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // matches223totalruns6624striker (6:44)
                            left:  6,
                            top:  203,
                            child:
                            Align(
                              child:
                              SizedBox(
                                width:  199,
                                height:  138,
                                child:
                                RichText(
                                  text:
                                  TextSpan(
                                    style:  GoogleFonts.abel (
                                      // 'Roboto',
                                      fontSize:  25,
                                      fontWeight:  FontWeight.w700,
                                      height:  1.171875,
                                      color:  Color(0xffffffff),
                                    ),
                                    children:  [
                                      TextSpan(
                                        text:  'Matches',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  ' 231',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  25,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  ' \n',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Total Runs ',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '4381',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  ' ',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w700,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  ' \n',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Strike Rate ',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '132.4\n',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Balls Faced ',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '3308\n',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  'Highest Score ',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w500,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                      TextSpan(
                                        text:  '97\n',
                                        style:  GoogleFonts.abel (
                                          // 'Roboto',
                                          fontSize:  23,
                                          fontWeight:  FontWeight.w800,
                                          height:  1.1725,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   // virat1ndv (6:39)
                    //   width:  305,
                    //   height:  371,
                    //   child: Image.network(
                    //     'sss',
                    //     fit:  BoxFit.cover,
                    //   ),
                    // ),
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
                        'images/home.png',
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
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> batsmanteam1()));
                      // Navigator.push(context,MaterialPageRoute(builder:(context)=> CustomBottomNavigationBar11()));
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => team(),
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
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> Bowler()));

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