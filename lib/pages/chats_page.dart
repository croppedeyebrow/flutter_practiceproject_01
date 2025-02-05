import 'package:flutter/material.dart';
import 'package:flutter_telegrame_clone/json/chat_json.dart';
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
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(60), child: getAppBar()),
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
          icon: Icon(LineIcons.edit, color: primary),
        ),
      ],
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
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
                                color: white.withOpacity(0.3)),
                            hintText: "Search for message or users",
                            hintStyle: TextStyle(
                                color: white.withOpacity(0.3), fontSize: 17)),
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(height: 20),
          getListChats()
        ],
      ),
    );
  }

  Widget getListChats() {
    var size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(chat_data.length, (index) {
        return Row(children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(chat_data[index]['img']),
                    fit: BoxFit.cover)),
          ),
          SizedBox(width: 12),
          Expanded(
              child: Container(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: (size.width - 40) * 0.6,
                        child: Text(
                          chat_data[index]['name'],
                          style: TextStyle(
                              fontSize: 16,
                              color: white,
                              fontWeight: FontWeight.w600),
                          maxLines: 2,
                        ))
                  ],
                )
              ],
            ),
          ))
        ]);
      }),
    );
  }
}
