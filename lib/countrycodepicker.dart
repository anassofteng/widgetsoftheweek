import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class Countrypicker extends StatefulWidget {
  const Countrypicker({super.key});

  @override
  State<Countrypicker> createState() => _CountrypickerState();
}

class _CountrypickerState extends State<Countrypicker> {
  String countrycode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('country picker')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(countrycode.toString()),
          Center(
            child: TextButton(
              onPressed: () {
                showCountryPicker(
                    context: context,
                    onSelect: (Country value) {
                      print(value.countryCode.toString());
                      print(value.phoneCode.toString());

                      countrycode = value.phoneCode.toString();
                      setState(() {});
                    });
              },
              child: Text('Tap'),
            ),
          )
        ],
      ),
    );
  }
}
