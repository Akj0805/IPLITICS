import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/BowlerTeam2.dart';
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


class KKR_ball extends StatefulWidget {
  const KKR_ball({Key? key}) : super(key: key);

  @override
  _KKR_ballState createState() =>
      _KKR_ballState();



}

class _KKR_ballState extends State<KKR_ball>
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
  List names = ["Harshit Rana","Umesh Yadav","Shivam Mavi","Varun Chakaravarthy","Sunil Narine"];
  List designations = ["Bowler","Bowler","Bowler","Bowler","Bowler"];
  List  urls = ["images/HarshitRana.png","images/UmeshYadav.png","images/ShivamMavi.png","images/VarunChakaravarthy.png","images/SunilNarine.png"];
  //List  urls2 = [CustomBottomNavigationBar12(),"images/prithvishaw.png","images/davidwarner.png","images/philipsalt.png","images/lalityadav.png","images/mitchellmarsh.png","images/rovmanpowell.png","images/ripalpatel.png","images/sarfarazkhan.png","images/yashdhull.png","images/rileerossouw.png","images/manishpandey.png"];

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
                        'Bowler\nDemographic',
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
                        'Select Bowler',
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
                  itemCount: 5,
                  shrinkWrap: true,

                  itemBuilder: (BuildContext context, int index) =>

                      GestureDetector(

                        onTap: (){
                          if (_isMenuVisible) {
                            _toggleMenu();
                          }
                          else{
                            setState(() {
                              bawlername=names[index];

                            });
                            Navigator.push(context,MaterialPageRoute(builder:(context)=> BowlerTeam2()));

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
                                          Text (designations [index], style: TextStyle(color: Colors.grey)),


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
                        'images/hurl.png',
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
                  onTap: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> liveipl()));
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
              onPressed: () {Navigator.push(context,MaterialPageRoute(builder:(context)=> contactus()));
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