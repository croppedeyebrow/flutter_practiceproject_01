import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/pages/contact_page.dart';
import 'package:flutter_telegrame_clone/pages/chats_page.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';
import 'package:flutter_telegrame_clone/pages/setting_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        ContactPage(),
        ChatsPage(),
        SettingPage(),
      ],
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
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      index == 1
                          ? Badge(
                              label: Text(
                                "3",
                                style: TextStyle(color: white),
                              ),
                              child: Icon(iconsItems[index],
                                  size: 30,
                                  color: pageIndex == index
                                      ? primary
                                      : white.withOpacity(0.5)),
                            )
                          : Icon(iconsItems[index],
                              size: 30,
                              color: pageIndex == index
                                  ? primary
                                  : white.withOpacity(0.5)),
                      SizedBox(height: 3),
                      Text(textItems[index],
                          style: TextStyle(
                              fontSize: 11,
                              color: pageIndex == index
                                  ? primary
                                  : white.withOpacity(0.5)))
                    ],
                  ),
                );
              }),
            )));
  }
}
