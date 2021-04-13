import 'package:flutter/material.dart';

void main() {
  runApp(new bruhProfile());
}

class bruhProfile extends StatefulWidget {
  @override
  _bruhProfileState createState() => _bruhProfileState();
}

class _bruhProfileState extends State<bruhProfile> {
  String texter = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my app',
      home: new Scaffold(
        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 250.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black87,
                    radius: 60.00,
                    foregroundColor: Colors.white,
                    child: Text('HA'),
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    'Habibullah Amino',
                    style: TextStyle(
                        fontSize: 25.00,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Trainee',
                    style:
                    TextStyle(fontSize: 20.00, color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 5, top: 15, right: 5, bottom: 15),
                  child: Column(
                    children: [
                      Text('42.0K',
                          style: TextStyle(
                            fontSize: 25.00,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('posts', style: TextStyle(fontSize: 20.00))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('66.6K',
                        style: TextStyle(
                            fontSize: 25.00,
                            fontWeight: FontWeight.bold)),
                    Text('follwers', style: TextStyle(fontSize: 20.00)),
                  ],
                ),
                Column(
                  children: [
                    Text('6.9K',
                        style: TextStyle(
                            fontSize: 25.00,
                            fontWeight: FontWeight.bold)),
                    Text('following', style: TextStyle(fontSize: 20.00)),
                  ],
                )
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20)),
                Text(
                  'Photos',
                  style: TextStyle(fontSize: 20.00),
                )
              ],
            ),
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 130,
                      margin: EdgeInsets.all(10),
                    ),

                  ],
                )
            ),

            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20)),
                Text(
                  'Posts',
                  style: TextStyle(fontSize: 20.00),
                )
              ],
            ),
            Row(
             children: [
               Container(
                 child: Row(
                   children: [
                     Column(
                       children: [
                         ClipRRect(
                           child: Container(
                             margin: EdgeInsets.all(10),
                             height: 40.0,
                             width: 40.0,
                             color: Colors.black,
                           ),
                         ),
                       ],
                     ),

                     Column(
                       children: [
                         Row(
                           children: [
                             Padding(padding: EdgeInsets.all(5),),
                             Text('Habibullah Amino posted a photo'),

                           ],
                         ),
                         Padding(padding: EdgeInsets.all(3),),
                         Row(
                           textDirection: TextDirection.ltr,
                           children: [
                             Icon(Icons.calendar_today),
                             Padding(padding: EdgeInsets.all(5),),
                             Text('42 minutes ago                      ',)
                           ],
                         )

                       ],
                     )
                   ],
                 ),
               ),
             ],
            ),
            Container(
              color: Colors.red,
              height: 300,
              margin: EdgeInsets.all(20),
            ),

            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 40.0,
                              width: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Habibullah Amino posted a photo'),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(3),),

                          Row(
                            textDirection: TextDirection.ltr,
                            children: [
                              Icon(Icons.calendar_today),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text('1 hour ago                                     ',)
                            ],
                          )

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.green,
              height: 300,
              margin: EdgeInsets.all(20),
            )


          ],
        ),
        appBar: new AppBar(
          title: Text('Profile'),
          //leading: Icon(Icons.menu),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    texter = 'search';
                  });
                }),
            IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  setState(() {
                    texter = 'more';
                  });
                }),
          ],
        ),
        drawer: Drawer(),
      ),
    );
  }
}
