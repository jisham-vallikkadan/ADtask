import 'package:flutter/material.dart';

class LIst extends StatefulWidget {
  const LIst({Key? key}) : super(key: key);

  @override
  State<LIst> createState() => _LIstState();
}

class _LIstState extends State<LIst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text('asf'),
          SizedBox(
           height: 19,
            child: ListView.builder(
              shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             itemCount: 17,
            itemBuilder: (context, index) {
              return Text('af');
            },),
          ),
          Text('jljk')
        ],
      ),
    );
  }
}
