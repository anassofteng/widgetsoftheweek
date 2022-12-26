import 'dart:async';

import 'package:flutter/material.dart';

class StrmBilder extends StatefulWidget {
  const StrmBilder({super.key});

  @override
  State<StrmBilder> createState() => _StrmBilderState();
}

class _StrmBilderState extends State<StrmBilder> {
  List<String> list = [];
  TextEditingController messageController = TextEditingController();
  SteamsSocket steamsSocket = SteamsSocket();

  Stream<DateTime> generatenumber() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now();
    }
  }

  @override
  void initState() {
    super.initState();
    list.add('');
    steamsSocket.addResponse(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anas Arshad'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: StreamBuilder(
                  stream: steamsSocket.getResponse,
                  builder: (context, AsyncSnapshot<List<String>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.connectionState ==
                            ConnectionState.active ||
                        snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return Text(snapshot.data![index].toString());
                            });
                      } else {
                        return const Text('Expect the unexpected');
                      }
                    } else {
                      return const Text('Some thing gone wrong');
                    }
                  }),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(hintText: 'Enter message'),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      list.add(messageController.text.toString());
                      steamsSocket.addResponse(list);
                      messageController.clear();
                    },
                    icon: Icon(Icons.send))
              ],
            )
          ]),
    );
  }
}

class SteamsSocket {
  final _stream = StreamController<List<String>>.broadcast();
  void Function(List<String>) get addResponse => _stream.sink.add;
  Stream<List<String>> get getResponse => _stream.stream.asBroadcastStream();
}
