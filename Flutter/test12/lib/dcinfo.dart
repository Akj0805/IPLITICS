import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/contactus.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/main.dart';
import 'package:url_launcher/url_launcher.dart';


// void main() => runApp(
//   MaterialApp(
//       debugShowCheckedModeBanner: false,
//
//       home:CustomBottomNavigationBar()),
// );
class teamdcinfo extends StatefulWidget {
  const teamdcinfo({Key? key}) : super(key: key);

  @override
  _teamdcinfoState createState() =>
      _teamdcinfoState();



}

class _teamdcinfoState extends State<teamdcinfo>
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
                // cskY7z (0:62)
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
                      padding:  EdgeInsets.fromLTRB(39, 39, 19.5, 11),
                      width:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                        children:  [
                          Container(
                            // ipliticsKgU (0:69)
                            margin:  EdgeInsets.fromLTRB(230, 0, 0, 15),
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
                            // autogroup8j7rxDe (VvvGryvpKQf5yAvorq8J7r)
                            margin:  EdgeInsets.fromLTRB(0, 0, 40, 0),
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.end,
                              children:  [
                                Container(
                                  // image28TAQ (0:63)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 34.5, 0),
                                  width:  84,
                                  height:  82,
                                  child:
                                  ClipRRect(
                                    borderRadius:  BorderRadius.circular(50),
                                    child:
                                    Image.asset(
                                        'images/dcicon.png'
                                      // fit:  BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // cskchennaisuperkingsG7r (0:64)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 0, 4),
                                  constraints:  BoxConstraints (
                                    maxWidth:  143,
                                  ),
                                  child:
                                  RichText(
                                    textAlign:  TextAlign.center,
                                    text:
                                    TextSpan(
                                      style:  GoogleFonts.abel (
                                        // 'Alegreya',
                                        fontSize:  25,
                                        fontWeight:  FontWeight.w800,
                                        height:  1.36,
                                        color:  Color(0xff4b4b87),
                                      ),
                                      children:  [
                                        TextSpan(
                                          text:  'DC\n',
                                        ),
                                        TextSpan(
                                          text:  ' ',
                                          style:  GoogleFonts.abel (
                                            // 'Alegreya',
                                            fontSize:  20,
                                            fontWeight:  FontWeight.w800,
                                            height:  1.36,
                                            color:  Color(0xff4b4b87),
                                          ),
                                        ),
                                        TextSpan(
                                          text:  ' Delhi Capital',
                                          style:  GoogleFonts.abel (
                                            // 'Alegreya',
                                            fontSize:  16,
                                            fontWeight:  FontWeight.w700,
                                            height:  1.36,
                                            color:  Color(0xff7d7dbb),
                                          ),
                                        ),
                                      ],
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
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 22),
                      // width:  829,
                      // height:  300,
                      child:
                      Image.asset(
                        'images/dcteam.webp',
                        // fit:  BoxFit.contain,
                        width:600,
                        height:  350,

                      ),
                    ),
                    Container(
                      // chennaisuperkingscskisacricket (0:66)
                      margin:  EdgeInsets.fromLTRB(0, 0, 7, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  385,
                      ),
                      child:
                      Text(
                          'One of the eight original VIVO Indian Premier League teams is the Delhi Capitals (IPL). Delhi Capitals, which are jointly owned by the GMR Group and the JSW Group, debuted in 2008 as Delhi Daredevils until adopting a new identity in December 2018.',
                        style:  GoogleFonts.abel (
                          // 'Roboto',
                          fontSize:  15.3,
                          // fontWeight:  FontWeight.w200,
                          height:  1.3333333333,
                          color:  Color(0xff4b4b87),
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