import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class IosCallsPage extends StatefulWidget {
  const IosCallsPage({Key? key}) : super(key: key);

  @override
  State<IosCallsPage> createState() => _IosCallsPageState();
}

class _IosCallsPageState extends State<IosCallsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      navigationBar: const CupertinoNavigationBar(
        leading: Text(
          "Calls",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 75),
            ...Global.allcontacts
                .map(
                  (e) => Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(6),
                              child: CircleAvatar(
                                radius: 25,
                                child: FlutterLogo(),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e['name'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Row(
                                  children: const [
                                    Icon(CupertinoIcons.phone_arrow_up_right),
                                    SizedBox(width: 5),
                                    Text(
                                      "Outgoing",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(e['time']),
                            const SizedBox(width: 20),
                            const Icon(CupertinoIcons.exclamationmark_circle),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
