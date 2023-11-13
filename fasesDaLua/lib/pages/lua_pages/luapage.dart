import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:login/models/moonphase.dart';

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
          subtitle: Text('fase ${_FaseLua(index)}'),
        );
      }, separatorBuilder: (context, index) => Divider(),
      
    );
  }
  
  _MonstraData(int index) {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy");
    var dateMonth =  dateFormat.format(currentDate.add(Duration(days: index)));
    return "$dateMonth";
  }
  
  _FaseLua(int index) {
    MoonPhase moon=MoonPhase();
    var dateMonth =  currentDate.add(Duration(days: index));
    // var lunarDayConway = moon.getLunarDay(dateMonth);
    var lunarDayConway = moon.getLunarDayConway(dateMonth);    
    return 'Fase da lua (provável): ${moon.getMoonPhaseConway(lunarDayConway).name}';
  }
 
}