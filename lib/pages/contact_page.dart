import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';

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
        preferredSize: Size.fromHeight(80),
      ),
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
                fontSize: 16, color: primary, fontWeight: FontWeight.w500),
          )),
    );
  }
}
