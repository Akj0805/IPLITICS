import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab1.dart';
import 'package:test12/bat_csk.dart';
import 'package:test12/bat_dc.dart';
import 'package:test12/bat_kkr.dart';
import 'package:test12/bat_mi.dart';
import 'package:test12/bat_rcb.dart';
import 'package:test12/bat_gt.dart';
import 'package:test12/bat_lsg.dart';
import 'package:test12/bat_pbks.dart';
import 'package:test12/bat_rr.dart';
import 'package:test12/bat_srh.dart';
import 'package:test12/batsman.dart';
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

var team1name='';
var batsmanname = "initial value";

class batsmanteam1 extends StatefulWidget {
  const batsmanteam1({Key? key}) : super(key: key);

  @override
  _batsmanteam1State createState() =>
      _batsmanteam1State();



}

class _batsmanteam1State extends State<batsmanteam1>
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
  List names = ["CSK","KKR","MI","DC","RCB","PBKS","LSG","GT","RR","SRH"];
  // List designations = ["Wicket Keeper/Batsman","Batsman","Batsman","All Rounder","ALL ROunder","Batsman","ALL Rounder","All Rounder","Batsman","ALL Rounder","Batsman","Batsman"];
  List  urls = ["images/csk1.jpg","images/kkr.jpg","images/mi.jpg","images/dcicon.png","images/rcb1.webp","images/pbks.png","images/lucknow.webp","images/gt.jpg","images/rr.png","images/srh.png"];
  List  urls2 = [bat_csk(),bat_kkr(),bat_mi(),bat_dc(),bat_rcb(),bat_pbks(),bat_lsg(),bat_gt(),bat_rr(),bat_srh()];

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

        resizeToAvoidBottomInset : false,
        body: Container(
          child:Stack(
            children: [
              Container(
                // btd19tt (1:38)
                padding:  EdgeInsets.fromLTRB(60, 10.18, 18.5, 329),
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
                      margin:  EdgeInsets.fromLTRB(0, 0, 40.5, 0),
                      constraints:  BoxConstraints (
                        maxWidth:  241,
                      ),
                      child:
                      Text(
                        'Batsman\nDemographic',
                        textAlign:  TextAlign.center,
                        style:  GoogleFonts.abel (
                          // 'Poppins',
                          fontSize:  34,
                          fontWeight:  FontWeight.w700,
                          height:  1.5,
                          color:  Color(0xff4b4b87),
                        ),
                      ),
                    ),
                    Container(
                      // selectteamjVi (1:39)
                      margin:  EdgeInsets.fromLTRB(0, 10, 44.5, 0),
                      child:
                      Text(
                        'Select Team 1',
                        style:  GoogleFonts.abel (
                          // 'Poppins',
                          fontSize:  28,
                          fontWeight:  FontWeight.w700,
                          height:  1.5,
                          color:  Color(0xff7d7dbb),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                margin:  EdgeInsets.fromLTRB(0, 265, 0, 0),

                child: ListView.builder (
                  itemCount: 10,
                  shrinkWrap: true,

                  itemBuilder: (BuildContext context, int index) =>

                GestureDetector(

                        onTap: (){
                          if (_isMenuVisible) {
                            _toggleMenu();
                          }
                          else{
                            team1name=names[index];

                            Navigator.push(context,MaterialPageRoute(builder:(context)=> urls2[index]));

                          }
                        },
                        child:Container (
                          width: MediaQuery.of (context).size.width,
                          padding: EdgeInsets.symmetric (horizontal: 10.0, vertical: 5.0),
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius. circular (10.0),
                            ), // Rounded Rectangle Border
                            child: Container(
                              width: MediaQuery.of (context). size.width,
                              padding: EdgeInsets.symmetric (horizontal: 10.0, vertical: 10.0),

                              child: Row(

                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [

                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget> [
                                      Container (
                                        width: 55.0,
                                        height: 55.0,
                                        // color: Colors.green,
                                        child: CircleAvatar (
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.blue,
                                          backgroundImage: AssetImage(urls [index]),
                                        ), // CircleAvatar
                                      ),
                                      SizedBox(width: 5.0,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text (names[index], style: TextStyle (color: Colors.black, fontSize:
                                          18.0, fontWeight: FontWeight.bold)),
                                          // Text (designations [index], style: TextStyle(color: Colors.grey)),


                                        ],

                                      ),

                                    ], // <Widget>[]
                                  ), // Row
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric (horizontal: 5.0, vertical: 0),
                                    // // FlatButtchild: FloatingActionButton(
                                    //                                     //   onPressed: () {},
                                    //                                     //   shape: RoundedRectangleBorder(
                                    //                                     //     borderRadius: BorderRadius.circular (20.0),
                                    //                                     //   ), // Rounded RectangleBorder
                                    //                                     //   child: Text("Invite", style: TextStyle(color: Colors.white)),
                                    //                                     // ), on


                                  ),
                                ], // <Widget>[]
                              ), // Row
                            ),
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
                    onTap: () { Navigator.push(context,MaterialPageRoute(builder:(context)=> CustomBottomNavigationBar()));

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
                    onTap: () {}, // Image tapped
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