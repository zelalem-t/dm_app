
import 'package:dm_support/constants.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';

class DMDrawer extends StatefulWidget {
  @override
  State<DMDrawer> createState() => _DMDrawerState();
}

class _DMDrawerState extends State<DMDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 32.0,
      child: ListView(
        children: <Widget>[
          Container(
            color:Colors.blue,
            height: 200,
            child: GestureDetector(
              child: Row(
                children: <Widget>[
                  IconButton(icon:const Icon(Icons.arrow_back_sharp),
                    onPressed: ()=>{
                      Navigator.pop(context)
                    },
                  ),
                  const Text("የስኳር ህመም አጋዥ",
                      style:TextStyle(
                          fontSize: 20,
                          color: Colors.white,

                      ),
                      overflow: TextOverflow.clip
                  )
                ],
              ),
            ),

          ),
          ListTile(
            title: const Text("መጀመሪያ ገፅ"),
            trailing: IconButton(icon:const Icon(Icons.home),
                onPressed:()=>{}),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>HomePage()));
            },
          ),
          ListTile(
            title: const Text("ስለ መተግበሪያዉ እና የመብት ጥበቃ"),
            trailing: IconButton(icon:const Icon(Icons.info),
                onPressed:(){}
            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>const AboutDM()));
            },
          ),
        ],
      ),
    );
  }
}
