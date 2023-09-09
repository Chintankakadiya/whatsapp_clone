import 'package:flutter/material.dart';

import '../globals.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff239a7e),
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      backgroundColor: Color(0xff121b22),
      body: SingleChildScrollView(
        child: Column(
          children: Global.allcontacts
              .map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: FlutterLogo(),
                  ),
                  title: Text(
                    e['name'],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.call_received,
                        color: Colors.green,
                      ),
                      Text(
                        e['time'],
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Color(0xff239a7e),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
