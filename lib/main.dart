import 'package:flutter/material.dart';
import 'package:widgetsoftheweek/FutureBuilder.dart';
import 'package:widgetsoftheweek/Reorderable_List.dart';
import 'package:widgetsoftheweek/animatdcontainer.dart';
import 'package:widgetsoftheweek/connectivity.dart';
import 'package:widgetsoftheweek/countrycodepicker.dart';
import 'package:widgetsoftheweek/customisedList.dart';
import 'package:widgetsoftheweek/imagewidget.dart';
import 'package:widgetsoftheweek/sharedprefernces.dart';
import 'package:widgetsoftheweek/streambuilder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ReorderableList(),
    );
  }
}

class ReorderableList extends StatefulWidget {
  const ReorderableList({super.key});

  @override
  State<ReorderableList> createState() => _ReorderableListState();
}

class _ReorderableListState extends State<ReorderableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets of the week'),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReOrderableList())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Re orderable list')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FutureBilder())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Future Builder')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => StrmBilder())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Stream Builder')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Countrypicker())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Country picker')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => AnimateContainer())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Animated container')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => imagewiget())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Image widget')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => sharedpreference())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('sharedpreference')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => customiseddropdown())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('list')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ConnectivityCheck())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Wifi check')),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReOrderableList())),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: const Text('Re orderable list')),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
