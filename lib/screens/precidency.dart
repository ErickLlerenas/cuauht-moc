import 'package:app_cuahutemoc/widgets/my_app_bar.dart';
import 'package:app_cuahutemoc/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class Presidency extends StatefulWidget {
  const Presidency({Key? key}) : super(key: key);

  @override
  _PresidencyState createState() => _PresidencyState();
}

class _PresidencyState extends State<Presidency> {
  List items = [];

  @override
  void initState() {
    items.add({
      'title': 'Se crea la app de Cuauhtémoc',
      'description': 'Lorem askdas samsadkask d akdas djsa djas',
      'image':'https://images.pexels.com/photos/4016542/pexels-photo-4016542.jpeg?',
      'date' : '5/10/2021'
    });
    items.add({
      'title': 'Se crea la app de xd',
      'description': 'Lorem askdas xd d akdas djsa djas',
      'image':'https://images.pexels.com/photos/8551174/pexels-photo-8551174.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=750',
      'date' : '5/10/2021'
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // here the desired height
          child: MyAppBar(title: 'Presidencia')),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
            children: items
                .map((item) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(left: 15,top:15,bottom:15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                item['image'],
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item['title'],style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300,fontSize: 20),textAlign:TextAlign.left,overflow: TextOverflow.ellipsis,maxLines:2),
                                                                SizedBox(height: 10),

                                Text(item['description'],style:TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w300), overflow: TextOverflow.ellipsis,maxLines:2),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.access_time,color: Colors.grey[600],),
                                    SizedBox(width: 10),
                                Text(item['date'],style:TextStyle(color: Colors.grey[800],fontWeight: FontWeight.w300), overflow: TextOverflow.ellipsis,maxLines:2)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )))
                .toList()),
      ),
    );
  }
}
