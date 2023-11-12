import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class LuaPage extends StatelessWidget {
  LuaPage({super.key});

  DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Data: ${_MonstraData(index)}'),
          subtitle: Text('fase'),
        );
      }, separatorBuilder: (context, index) => Divider(),
      
    );
  }
  
  _MonstraData(int index) {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy");
    var dateMonth =  dateFormat.format(currentDate.add(Duration(days: index)));
    return "$dateMonth";
  }
 
}