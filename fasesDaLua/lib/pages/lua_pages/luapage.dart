import 'package:flutter/material.dart';

class LuaPage extends StatelessWidget {
  const LuaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('data'),
          subtitle: Text('fase'),
        );
      }, separatorBuilder: (context, index) => Divider(),
      
    );
  }
}