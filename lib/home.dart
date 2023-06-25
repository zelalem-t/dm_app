import "package:dm_support/constants.dart";
import "package:dm_support/profile.dart";
import "package:flutter/material.dart";
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title:  const Text(homePageTitle, style: TextStyle(
            color:Colors.white,
          ),),
        ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileData()));
              },
              style:ElevatedButton.styleFrom(
                minimumSize: const Size(350,60),
                textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side:const BorderSide(color:Colors.cyan),
                ),
              ),
              child: const Text("ግላዊ መረጃ ጨምር"),
            ),
            const Divider(height:10),
            ElevatedButton(
              onPressed: (){},
                style:ElevatedButton.styleFrom(
                  minimumSize: const Size(350,60),
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side:const BorderSide(color:Colors.cyan),
                  ),
                ),
              child: const Text("ግላዊ መረጃ ቀይር")
            ),
            const Divider(height:10),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileData()));
              },
              style:ElevatedButton.styleFrom(
                minimumSize: const Size(350,60),
                textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side:const BorderSide(color:Colors.cyan),
                ),
              ),
              child: const Text("የምግብ ሁኔታ ጨምር"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>ProfileData()));
              },
              style:ElevatedButton.styleFrom(
                minimumSize: const Size(350,60),
                textStyle: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side:const BorderSide(color:Colors.cyan),
                ),
              ),
              child: const Text("የደም ስኳር ሁኔታ ጨምር"),
            ),

          ],
        ),
      ),
    );
  }
}
