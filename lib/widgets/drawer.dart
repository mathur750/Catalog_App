import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  final imageUrl =
      "https:th.bing.com/th/id/OSK.HERObURWeNzdo9aDPplozDf1RFbJS_LLWO-CxJxtFCL1gZw?rs=1&pid=ImgDetMain";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Colors.orangeAccent, // drawer ke colour ko change krne ke liye
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.orangeAccent),
                margin: EdgeInsets.zero,
                accountName: Text("Saurabh Mathur"),
                accountEmail: Text("saurabhmathur750@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "imageUrl"), // drawer wale section me image show krane ke liye
                ),
              )),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              "Email me",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
