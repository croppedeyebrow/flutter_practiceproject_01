import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';
import 'package:line_icons/line_icons.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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

Widget getBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
            height: 68,
            decoration: BoxDecoration(
              color: greyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      style: TextStyle(color: white),
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(LineIcons.search,
                              color: white.withOpacity(0.3))),
                    ),
                  )
                ],
              ),
            ))
      ],
    ),
  );
}
