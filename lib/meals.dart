import 'package:flutter/material.dart';

class Meal extends StatefulWidget {
  const Meal({super.key});

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
   List<DropdownMenuEntry> entries = [
     const DropdownMenuEntry(value: 0, label: "ቁርስ"),
     const DropdownMenuEntry(value: 1, label: "ጧት መቅሰስ"),
     const DropdownMenuEntry(value: 2, label: "ምሳ"),
     const DropdownMenuEntry(value: 3, label: "ከሰዓት መቅሰስ"),
     const DropdownMenuEntry(value: 4, label: "እራት"),
     const DropdownMenuEntry(value: 5, label: "ሌላ"),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("የምግብ ሁኔታ ያስገቡ")
      ),
      body:ListView(
        children: <Widget>[
          DatePickerDialog(
              initialDate: DateTime.now(),
              firstDate: DateTime(1977),
              lastDate: DateTime(2099)
          ),
           DropdownMenu(
              dropdownMenuEntries: entries
          ),
          Row(
            children: <Widget>[
              DropdownMenu(
                  dropdownMenuEntries: entries),



            ],
          ),
          ElevatedButton(
              onPressed:(){},
              child: const Icon(
                Icons.add,
                color:Colors.blue,
                size: 60,))
        ]
      )
    );
  }
}
