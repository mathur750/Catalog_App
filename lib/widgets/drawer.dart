import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});
  final imageUrl = "https://wallpaperaccess.com/full/9411630.jpg";
  //"https://www.bing.com/images/search?view=detailV2&ccid=f1c7entU&id=F54AA84828BF6976224AFDF96B17244A6172737D&thid=OIP.f1c7entU6p9dg1cuD3GqMAHaEK&mediaurl=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F9411630.jpg&exph=768&expw=1365&q=iit+roorkee&simid=607996705141293490&FORM=IRPRST&ck=869C388FDB4F3F5C3FA95B7CBDA67309&selectedIndex=2&itb=0&cw=1186&ch=587&ajaxhist=0&ajaxserp=0";

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
