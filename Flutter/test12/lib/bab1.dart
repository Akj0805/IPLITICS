import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test12/Bowler.dart';
import 'package:test12/aboutus.dart';
import 'package:test12/bab2.dart';
import 'package:test12/batsmanteam1.dart';
import 'package:test12/contactus.dart';
import 'package:test12/liveipl.dart';
import 'package:test12/main.dart';
import 'package:url_launcher/url_launcher.dart';



class bab1 extends StatefulWidget {
  const bab1({Key? key}) : super(key: key);

  @override
  _bab1State createState() =>
      _bab1State();



}
var team1=' ';
var team2='';
var year='';
var nextbutton1="Next";
class _bab1State extends State<bab1>
    with SingleTickerProviderStateMixin {
  void _showPicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200.0,
        child: CupertinoPicker(
          backgroundColor: Color(0xffdec6fe),
          itemExtent: 32.0,
          onSelectedItemChanged: (int index) {
            setState(() {
              selectedValue = pickerValues[index];
              team1=pickerValues[index];

            });
          },
          children: List.generate(
            pickerValues.length,
                (int index) => Center(
              child: Text(
                pickerValues[index],
                style: TextStyle(fontSize: 25.0,color:Color(0xff2c2c6c)),

              ),
            ),
          ),
        ),
      ),
    );
  }


  void _showPicker2(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200.0,
        child: CupertinoPicker(
          backgroundColor: Color(0xffdec6fe),
          itemExtent: 32.0,
          onSelectedItemChanged: (int index) {
            setState(() {
              selectedValue2 = pickerValues2[index];
              team2=pickerValues2[index];
            });
          },
          children: List.generate(
            pickerValues2.length,
                (int index) => Center(
              child: Text(
                pickerValues2[index],
                style: TextStyle(fontSize: 25.0,color:Color(0xff2c2c6c)),
              ),
            ),
          ),
        ),
      ),
    );
  }



  void _showPicker3(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200.0,
        child: CupertinoPicker(
          backgroundColor: Color(0xffdec6fe),
          itemExtent: 32.0,
          onSelectedItemChanged: (int index) {
            setState(() {
              selectedValue3 = pickerValues3[index];
              year=pickerValues3[index] ;
            });
          },
          children: List.generate(
            pickerValues3.length,
                (int index) => Center(
              child: Text(
                pickerValues3[index],
                style: TextStyle(fontSize: 25.0,color:Color(0xff2c2c6c)),
              ),
            ),
          ),
        ),
      ),
    );
  }


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

        // appBar: AppBar(
        //   title: Text("Cupertino Picker Example"),
        // ),
        body: Container(

          child: Stack(
            children: [
              Container(
                // ipliticsTqi (0:79)
                margin:  EdgeInsets.fromLTRB(250.5, 40, 0, 0),
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
                margin:  EdgeInsets.fromLTRB(90, 80, 34.5, 89),
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
                // margin:  EdgeInsets.fromLTRB(0, 250, 0, 0),
                margin:  EdgeInsets.fromLTRB(70, 220, 60, 0),
                padding:  EdgeInsets.fromLTRB(0 , 0, 0, 0),
                // width:  double.infinity,
                decoration:  BoxDecoration (
                    color:  Color(0xffdec6fe),
                    border: Border.all(
                      color: Color(0xff4b4b87), //color of border
                      width: 2, //width of border
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(

                      child: CupertinoButton(
                        child: Text(selectedValue == null ? "Open Picker" : selectedValue,
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  26,
                            fontWeight:  FontWeight.w700,
                            height:  1.5,
                            color:  Color(0xff4b4b87),
                          ),),
                        onPressed: () {
                          _showPicker(context);
                        },
                      ),
                    ),
                    Container(
                      // rectangle65RJg (0:74)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width:  33,
                      height:  36,
                      child:
                      Image.asset(
                        ('images/arrow.png'),
                        fit:  BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin:  EdgeInsets.fromLTRB(0, 250, 0, 0),
                margin:  EdgeInsets.fromLTRB(65, 320,58, 0),
                padding:  EdgeInsets.fromLTRB(0 , 0, 0, 0),
                // width:  double.infinity,
                decoration:  BoxDecoration (
                    color:  Color(0xffdec6fe),
                    border: Border.all(
                      color: Color(0xff4b4b87), //color of border
                      width: 2, //width of border
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(

                      child: CupertinoButton(
                        child: Text(selectedValue2 == null ? "Open Picker" : selectedValue2,
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  26,
                            fontWeight:  FontWeight.w700,
                            height:  1.5,
                            color:  Color(0xff4b4b87),
                          ),),
                        onPressed: () {
                          _showPicker2(context);
                        },
                      ),
                    ),
                    Container(
                      // rectangle65RJg (0:74)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width:  33,
                      height:  36,
                      child:
                      Image.asset(
                        ('images/arrow.png'),
                        fit:  BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin:  EdgeInsets.fromLTRB(0, 250, 0, 0),
                margin:  EdgeInsets.fromLTRB(64, 420, 59, 0),
                padding:  EdgeInsets.fromLTRB(0 , 0, 0, 0),
                // width:  double.infinity,
                decoration:  BoxDecoration (
                    color:  Color(0xffdec6fe),
                    border: Border.all(
                      color: Color(0xff4b4b87), //color of border
                      width: 2, //width of border
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Container(

                      child: CupertinoButton(
                        child: Text(selectedValue3 == null ? "Open Picker" : selectedValue3,
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  26,
                            fontWeight:  FontWeight.w700,
                            height:  1.5,
                            color:  Color(0xff4b4b87),
                          ),
                        ),
                        onPressed: () {
                          _showPicker3(context);
                        },
                      ),
                    ),
                    Container(
                      // rectangle65RJg (0:74)
                      margin:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width:  33,
                      height:  36,
                      child:
                      Image.asset(
                        ('images/arrow.png'),
                        fit:  BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              Container(
                // margin:  EdgeInsets.fromLTRB(0, 250, 0, 0),
                margin:  EdgeInsets.fromLTRB(100, 660, 70, 0),
                padding:  EdgeInsets.fromLTRB(0 , 0, 0, 0),
                // width:  double.infinity,
                decoration:  BoxDecoration (
                    color:  Color(0xff4b4b87),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Row(
                  children: [
                    Container(

                      child: CupertinoButton(
                        child: Text("               "+nextbutton1,
                          style:  GoogleFonts.poppins (
                            // 'Poppins',
                            fontSize:  26,
                            fontWeight:  FontWeight.w700,
                            height:  1.5,
                            color:  Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if(year=="" || team2==""|| team1=="") {
                            setState(() {
                              nextbutton1="error";
                            });
                          }
                          else{
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => bab2()));
                          }
                        },
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
                  top:579,
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
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context)=> batsmanteam1()));
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
                    onTap: () {}, // Image tapped
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

String selectedValue='Select Team1';
String selectedValue2='Select Team2';
String selectedValue3='Select Year';

final List<String> pickerValues = ["CSK","DC","PBKS","GT ","SRH","RCB","LSG","KKR","MI","RR"];
final List<String> pickerValues2 = ["CSK","DC","PBKS","GT ","SRH","RCB","LSG","KKR","MI","RR"];
final List<String> pickerValues3 = ["2022","2021","2020","2019","2018"];

