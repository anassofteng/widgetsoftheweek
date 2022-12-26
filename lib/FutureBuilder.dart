import 'package:flutter/material.dart';

class FutureBilder extends StatefulWidget {
  const FutureBilder({super.key});

  @override
  State<FutureBilder> createState() => _FutureBilderState();
}

class _FutureBilderState extends State<FutureBilder> {
  Future<int> futureFunction() async {
    await Future.delayed(Duration(seconds: 3));
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder'),
      ),
      body: Column(
        children: [
          FutureBuilder(
              future: futureFunction(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done ||
                    snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  } else if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else {
                    return Text('some thing wrong');
                  }
                } else
                  return Text(snapshot.connectionState.toString());
              }),
        ],
      ),
    );
  }
}
