import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Builder(builder: (BuildContext context) {
        return new GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Container(margin: EdgeInsets.only(left: 25), child: Icon(Icons.menu,color:Colors.grey[800])),
        );
      }),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      backgroundColor: Colors.white,
      title: Text(this.title,
          style: TextStyle(color: Colors.grey[800], fontSize: 22,fontWeight: FontWeight.w400),
          textAlign: TextAlign.center),
    );
  }
}
