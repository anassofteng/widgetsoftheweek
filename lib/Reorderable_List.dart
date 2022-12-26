import 'package:flutter/material.dart';

class ReOrderableList extends StatefulWidget {
  const ReOrderableList({super.key});

  @override
  State<ReOrderableList> createState() => _ReOrderableListState();
}

class _ReOrderableListState extends State<ReOrderableList> {
  List<String> _favfruits = [
    'mangoes',
    'Apple',
    'oranges',
    'Bananas',
    'grapes',
    'strawberries',
    'watermelon',
    'melon',
    'figs',
    'pomegranate',
    'guava',
    'peach',
    'apricot',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Card(
              key: ValueKey(_favfruits[index]),
              child: ListTile(
                title: Text(_favfruits[index]),
              ),
            );
          },
          itemCount: _favfruits.length,
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                newIndex = newIndex - 1;
              }
              final element = _favfruits.removeAt(oldIndex);
              _favfruits.insert(newIndex, element);
            });
          },
        ),
      ),
    );
  }
}
