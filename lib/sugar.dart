import 'package:dm_support/constants.dart';
import 'package:flutter/material.dart';

class SugarLevel extends StatefulWidget {
  const SugarLevel({super.key});

  @override
  State<SugarLevel> createState() => _SugarLevelState();
}

class _SugarLevelState extends State<SugarLevel> {
   late TextEditingController sugarController = TextEditingController();
   double sugarLevel =0;
   late DateTime today;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sugarLevel = getSugarLevel();
    today = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(homePageTitle)
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children:  <Widget>[
           Row(
             children:<Widget>[

               Text('ሰዓት፥ ${today.hour.toString()}:${today.minute}',
               style:const TextStyle(fontSize: 24)),
               Text(' ቀን፥ ${today.weekday.toString()}',
                   style:const TextStyle(fontSize: 24)),
               Text(' ወር፥ ${today.month.toString()}',
                   style:const TextStyle(fontSize: 24)),
               Text(' ዓም፥ ${today.year.toString()}',
                   style:const TextStyle(fontSize: 24))

             ]
           ),
           const Divider(height:60,thickness: 5,color: Colors.blueGrey),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: sugarController,
              keyboardType: TextInputType.number,
              onChanged: (txt){
                if(sugarController.text.isEmpty){
                  setState(() {
                    sugarLevel=0;
                  });
                }
                setState(() => { sugarLevel =getSugarLevel()});
              },
               style:const TextStyle(
                 fontSize: 24
               )
          ),
           ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: LinearProgressIndicator(
              minHeight: 5,
              color: sugarLevel/100 <0.7?Colors.red:Colors.red,
              semanticsValue: getSugarLevel().toString(),
              value:sugarLevel/100,

              backgroundColor: Colors.green,
              semanticsLabel: "የአስገቡት የስኳር መጠን ",
            ),
          ),
          const Text(
            "የአስገቡት የስኳር መጠን ከሚፈለገዉ ጋር ሲታይ",
            style:TextStyle(
              color:Colors.green,
              fontSize: 22,
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){},
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
                child: const Text("Save", style:TextStyle(fontSize: 24))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){},
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
                child: const Text("Recommendation", style:TextStyle(fontSize: 24))),
          )
        ],
      )
    );
  }
  double getSugarLevel(){
    return sugarController.text.isEmpty?0:double.parse(sugarController.text);
  }
}
