import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/theme/colors.dart';

class ChatDetailPage extends StatefulWidget {
  final String name;
  final String img;
  const ChatDetailPage({Key? key, required this.name, required this.img})
      : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
    );
  }

  Widget getAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: greyColor,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 17,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "last seen recently",
                    style: TextStyle(color: white.withAlpha(40), fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primary,
          )),
    );
  }
}
