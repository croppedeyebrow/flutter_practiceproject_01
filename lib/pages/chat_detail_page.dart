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
      bottomNavigationBar: getBottomBar(),
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
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: NetworkImage(widget.img),
        ),
      ],
    );
  }

  Widget getBottomBar() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.attach_file, color: primary, size: 21),
            Container(
              width: size.width * 0.76,
              height: 32,
              decoration: BoxDecoration(
                color: white.withAlpha(10),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextField(
                  style: TextStyle(color: white, fontSize: 12),
                  cursorColor: primary,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.emoji_emotions_rounded,
                        color: primary, size: 25),
                  ),
                ),
              ),
            ),
            Icon(Icons.mic, color: primary, size: 20),
          ],
        ),
      ),
    );
  }
}
