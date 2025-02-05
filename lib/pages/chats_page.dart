import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60), child: getAppBar()));
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: greyColor,
      title: Text("Contacts"),
      leading: IconButton(
          onPressed: null,
          icon: Text(
            "Sort",
            style: TextStyle(
                fontSize: 20, color: primary, fontWeight: FontWeight.w500),
          )),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(LineIcons.plus, color: primary),
        ),
      ],
    );
  }
}
