import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final stuff = [
    'images/mainpic1.jpg',
    'images/mainpic2.jpg',
    'images/mainpic3.jpg',
    'images/mainpic4.jpg',
    'images/thor.jpg',
  ];
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(CupertinoIcons.back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'MAD MAX -',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'FURY ROAD',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Hero(
                  tag: 'demo',
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/pic2.jpg'),
                          fit: BoxFit.fitWidth),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    width: 260,
                    height: 240,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 250, top: 10),
                  width: 120,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '1h 58m',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Action',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            '4,5',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: IconButton(
                              iconSize: 20,
                              icon: Icon(Icons.bookmark),
                              color: Colors.black,
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 210,
                    left: 30,
                  ),
                  child: IconTheme(
                    data: IconThemeData(color: Colors.white, size: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star_half),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
              ),
              child: Text(
                'Synopsis',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 17,
              ),
              child: Text(
                'Laboris reprehenderit elit ex est sint voluptate quis reprehenderit sit \nvoluptate ea cupidatat.'
                'Nostrud minim occaecat occaecat excepteur \nid ex quis minim adipisicing do dolor laborum cupidatat.'
                'Laborum \nea nulla ad et qui. Sunt culpa dolore deserunt consectetur amet ad \nincididunt.Deserunt cupidatat'
                'sunt non ut et consequat cupidatat in mollit \naliqua sunt enim consectetur do. Culpa nisi qui occaecat reprehenderit',
                style: TextStyle(height: 1.8, fontSize: 16, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
                top: 17,
              ),
              child: Text(
                'Cast',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 5),
                height: 60,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.stuff.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                            image: DecorationImage(
                              image: AssetImage(widget.stuff[index]),
                              fit: BoxFit.cover,
                            )),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
