import 'package:flutter/material.dart';

class customiseddropdown extends StatefulWidget {
  const customiseddropdown({super.key});

  @override
  State<customiseddropdown> createState() => _customiseddropdownState();
}

class _customiseddropdownState extends State<customiseddropdown> {
  bool isopen = false;
  String selectOption = 'select option';
  List<String> politics = ['PTI', 'PPP', 'PMLN', 'MQM', 'JUI', 'BNP'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  isopen = !isopen;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectOption),
                      Icon(isopen
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              if (isopen)
                ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: politics
                      .map((e) => Container(
                            decoration: BoxDecoration(
                              color: selectOption == e
                                  ? Colors.pink
                                  : Colors.grey[400],
                            ),
                            child: InkWell(
                                onTap: () {
                                  isopen = false;
                                  selectOption = e;
                                  setState(() {});
                                },
                                child: Text(e)),
                          ))
                      .toList(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
