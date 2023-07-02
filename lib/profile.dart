import 'dart:core';

import 'package:dm_support/common_drawer.dart';
import 'package:flutter/material.dart';
import "package:dm_support/constants.dart";
import 'package:fluttertoast/fluttertoast.dart';

class ProfileData extends StatefulWidget {

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  late List<TextEditingController> editController = List.generate(14,(i)=>TextEditingController());
  List<String> profiles = ["ስም","ፆታ","እድሜ","የስራ ሁኔታ (ቢሮ የጉልበት ስራ)",
    "በቀን /ባሰምንት የሚያረጉት የሰውነት እንቅስቃሴ)","ክብደት","ቁመት","ተጎዳኝ በሽታዎች",
    "የሚኖሩበት አከባቢ (ገጠር /ከተማ)","የትምህርት ደረጃ","ሚወስዱት መዳሃኒት መጠን እና የወሰዱበት ግዜ",
    "የስኳር በሽታ አይነት","መዳሀኒት ከመጀመሮ በፊት ምን ያህል ቆዩ","ሳምንታዊ የጉሉኮስ መጠን"];
  bool isAnyEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          homePageTitle,
          style: TextStyle(
          color:Colors.white,
        ),
      ),
      ),
      body:ListView(
        children: <Widget>[
          TextField(
            controller: editController[0],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[0],

            ),
        onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
        },
          ),
          TextField(
            controller: editController[1],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[1],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[2],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[2],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[3],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[3],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[4],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[4],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[5],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[5],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[6],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[6],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[7],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[7],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[8],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[8],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[9],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[9],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[10],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[10],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[11],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[11],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[12],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[12],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          TextField(
            controller: editController[13],
            keyboardType: TextInputType.text,
            style: const TextStyle(fontSize: 22),
            decoration: InputDecoration(
              labelText: profiles[13],

            ),
            onSubmitted: (txt){
              if(txt.isEmpty){
                isAnyEmpty = true;
              }
            },
          ),
          ElevatedButton(
              onPressed: (){
                if(isAnyEmpty){
                  Fluttertoast.showToast(
                      msg: "ሁሉም መረጃዎች መጨመር አለባቸዉ",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }else{

                }
              },
              child: const Text(
                  "አስገባ",
                  style:TextStyle(fontSize: 22)
              )
          )
        ]
      ),
      drawer: DMDrawer(),
    );
  }

  void submitValue(string){

  }
}
