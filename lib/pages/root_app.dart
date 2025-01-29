import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getFooter() {
    List iconsItems = [
      Icons.account_circle,
      Icons.chat,
      Icons.settings,
    ];
    List textItems = [
      "Contacts",
      "Chats",
      "Settings",
    ];
    return Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(color: greyColor),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                return Column(
                  children: [
                    Icon(iconsItems[index],
                        size: 30, color: white.withOpacity(0.5)),
                    SizedBox(height: 3),
                    Text(textItems[index],
                        style: TextStyle(
                            fontSize: 11, color: white.withOpacity(0.5)))
                  ],
                );
              }),
            )));
  }
}
