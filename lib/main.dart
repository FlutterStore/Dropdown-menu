import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String country = "-- Select Country --";
  List<String> listitems = ["-- Select Country --", "United States of America", "India", "United Kingdom", "China", "Russia", "Austria", "Canada"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dropdown Menu',style: TextStyle(fontSize: 15),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ]
                ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  alignment: Alignment.center,
                  // isExpanded: true,
                    value: country,
                    onChanged: (value){
                       setState(() {
                          country = value.toString();
                       });
                    },
                    items: listitems.map((itemone){
                        return DropdownMenuItem(
                          value: itemone,
                          child: Text(itemone)
                        );
                    }).toList(),
                ),
              ),
          ),
            ),
          ],
        ),
      ),
    );
  }
}
