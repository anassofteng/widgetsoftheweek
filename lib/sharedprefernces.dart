import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sharedpreference extends StatefulWidget {
  const sharedpreference({super.key});

  @override
  State<sharedpreference> createState() => _sharedpreferenceState();
}

class _sharedpreferenceState extends State<sharedpreference> {
  String name = '';
  late int age;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString('name') ?? '';
    age = sp.getInt('age') ?? 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('shared Preferences')),
      body: Column(children: [
        FutureBuilder(
            future: SharedPreferences.getInstance(),
            builder: (context, AsyncSnapshot<SharedPreferences> snapshot) {
              return Column(
                children: [
                  Text('${snapshot.data?.getString('Name')}'),
                  Text('${snapshot.data?.getInt('age')}'),
                ],
              );
            }),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences sp = await SharedPreferences.getInstance();
          sp.setInt('age', 27);
          sp.setDouble('Lucky_Number', 20.2);
          sp.setString('Name', 'Anas Arshad');
          sp.setBool('isLogin', false);
          setState(() {});
          // sp.getInt('age');
          // sp.getDouble('lucky_Number');
          // name = sp.getString('name') ?? '';
          // sp.getBool('isLogin');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
