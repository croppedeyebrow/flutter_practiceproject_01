import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/json/chat_json.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: getBody(),
    );
  }

  getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      leading: IconButton(
        onPressed: null,
        icon: Icon(Icons.qr_code, color: primary, size: 28),
      ),
      actions: [
        IconButton(
            onPressed: null,
            icon: Text(
              "Edit",
              style: TextStyle(
                  color: primary, fontSize: 16, fontWeight: FontWeight.w500),
            ))
      ],
    );
  }

  Widget getBody() {
    return Column(children: [
      Center(
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(profile[0]['img']), fit: BoxFit.cover),
          ),
        ),
      ),
      SizedBox(height: 20),
      Text(
        profile[0]['name'],
        style:
            TextStyle(fontSize: 24, color: white, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 2,
      ),
      Text(
        "+855 10 101 101 - @sopheamen",
        style: TextStyle(
            fontSize: 18,
            color: white.withAlpha(50),
            fontWeight: FontWeight.w500),
      )
    ]);
  }
}
