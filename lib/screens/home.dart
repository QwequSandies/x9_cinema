import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'second_page.dart';

class Home extends StatefulWidget {
  final litems = [
    'Recommended',
    'Netflix',
    'HBOGO',
    'Amazon',
    'YouTube',
  ];

  final image = [
    'images/pic1.jpg',
    'images/pic2.jpg',
  ];
  final images = [
    'images/joker.jpg',
    'images/thor.jpg',
  ];
  final texts = ['DRIVE', 'MAD MAX '];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selected = 'Recommended';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        child: ListView(children: <Widget>[
          SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'X9',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'CINEMA',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          )
                        ]),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final option = widget.litems[index];
                      bool active = option == selected;
                      final textColor = active ? Colors.white : Colors.black;
                      return Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Container(
                          child: FilterChip(
                            selected: active,
                            showCheckmark: false,
                            backgroundColor: Colors.white,
                            selectedColor: Color.fromRGBO(253, 10, 76, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            onSelected: (s) {
                              setState(() => selected = option);
                            },
                            label: Text(
                              option,
                              style: TextStyle(
                                fontSize: 10,
                                color: textColor,
                                //fontWeight: active ? FontWeight.bold : null,
                                //  fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: widget.litems.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 275),
                  child: Text(
                    'Movies',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Hero(
                  tag: 'demo',
                  child: Container(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.image.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SecondPage();
                              }),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 15,
                              right: 20,
                              bottom: 15,
                            ),
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage(widget.image[index]),
                              ),
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 160.0),
                                  child: IconButton(
                                      icon: Icon(CupertinoIcons.ellipsis),
                                      color: Colors.white,
                                      iconSize: 25,
                                      onPressed: () {}),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 180, left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          widget.texts[index],
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        ' Ryan Gosling',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 243,
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white, size: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star),
                                        Icon(Icons.star_half),
                                        Spacer(),
                                        Icon(Icons.bookmark),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 20,
            ),
            child: Text(
              'Series',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.images.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(widget.images[index]),
                    ),
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 160.0),
                        child: IconButton(
                            icon: Icon(CupertinoIcons.ellipsis),
                            color: Colors.white,
                            iconSize: 25,
                            onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180, left: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'DRIVE',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'RyanGosling',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 225),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.star_border),
                                color: Colors.white,
                                iconSize: 19,
                                onPressed: () {}),
                            Spacer(),
                            IconButton(
                                icon: Icon(Icons.bookmark),
                                color: Colors.white,
                                iconSize: 19,
                                onPressed: () {}),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 17,
              child: Image.asset(
                'images/film.png',
                color: Colors.red,
              ),
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 15,
              height: 15,
              child: Image.asset(
                'images/fire.png',
                color: Colors.grey,
              ),
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark,
              size: 19,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(''),
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
