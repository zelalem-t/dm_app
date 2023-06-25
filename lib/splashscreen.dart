import 'package:dm_support/infopage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';


import 'home.dart';
import 'constants.dart';

class DMSplashScreen extends StatefulWidget {
  const DMSplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<DMSplashScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<bool> firstTime;
  // Sets the login status
  void _storeFirstTimeStatus(bool isFirstTime) async {
    SharedPreferences pref = await _prefs;
    final bool firstStatus = pref.getBool('first-time')??false;
    setState(() {
      firstTime = pref.setBool('first-time',firstStatus);
    });
  }

// Gets the logged in status
  Future<bool> _getFirstTimeStatus() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('firstTime') ?? false;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstTime = _prefs.then((SharedPreferences pref){
      return pref.getBool('first-time')??false;
    });
  }
  Future<dynamic> whereTo()async {

    //return await firstTime?const HomePage():const RHomePage();
  }
  @override
  Widget build(BuildContext context) {

    return SplashScreen(
        imageBackground: const AssetImage("assets/dm.png"),
        seconds:3,
        navigateAfterSeconds: const HomePage(),

        title: const Text('እንኳን ደህና መጡ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        ),
        //image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: const TextStyle(),
        photoSize: 100.0,
        onClick: (){},
        loaderColor: Colors.red

    );
  }
}
