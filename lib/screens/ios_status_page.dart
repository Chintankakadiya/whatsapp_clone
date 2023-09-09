import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../globals.dart';

class IosStatusPage extends StatefulWidget {
  const IosStatusPage({Key? key}) : super(key: key);

  @override
  State<IosStatusPage> createState() => _IosStatusPageState();
}

class _IosStatusPageState extends State<IosStatusPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey,
      navigationBar: const CupertinoNavigationBar(
        leading: Text(
          "Status",
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
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blueAccent),
                      ),
                      child:
                          const FlutterLogo(style: FlutterLogoStyle.horizontal),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "Add to my status",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    CupertinoIcons.camera,
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    CupertinoIcons.eyedropper_full,
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 20,
              width: double.infinity,
              child: Text("Recent Update"),
            ),
            ...Global.allcontacts
                .map(
                  (e) => Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.blueAccent),
                                ),
                                child: const FlutterLogo(
                                    style: FlutterLogoStyle.horizontal),
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
                                Text(
                                  e['time'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ],
        ),
      ),
    );
  }
}
