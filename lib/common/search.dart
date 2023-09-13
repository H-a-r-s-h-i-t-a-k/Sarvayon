import 'package:flutter/material.dart';

class SearchAuto extends StatefulWidget {
  const SearchAuto({super.key});

  @override
  State<SearchAuto> createState() => _SearchAutoState();
}

class _SearchAutoState extends State<SearchAuto> {
  // get listItems => null;
  static const List<String> listItems = <String>['apple', 'banana', 'orange'];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text == '') {
          return Iterable<String>.empty();
        }
        return listItems.where((String item) {
          return item.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String item) {
        print('The $item was selected');
      },
    );
  }
}
