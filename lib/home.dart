import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

/// ---------------------------
/// Shaped Light Drawer Drawer widget goes here.
/// ---------------------------
class home extends StatelessWidget {

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final Color primary = Colors.white;

  final Color active = Colors.grey.shade800;

  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: Colors.indigo.withOpacity(0.9),
          title: Text('Clothing Store'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _key.currentState.openDrawer();
            },
          ),
        ),

        /// ----------------
        /// Building drawer here .
        /// ---------------
        drawer: mydrawer(),

        /// ----------------
        /// main pages
        /// ---------------
        body: ListView(
          children: [
            Container(
              height: 350.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastLinearToSlowEaseIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 8,
                dotIncreasedColor: Colors.greenAccent,
                dotBgColor: Colors.black45,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 20.0,
                showIndicator: true,
                //indicatorBgPadding: 7.0,
                dotIncreaseSize: 2,
                dotSpacing: 20.0,
                dotColor: Colors.amberAccent,
                //borderRadius: true,
                //radius: Radius.circular(300),
                overlayShadow: true,
                overlayShadowColors: Colors.black45,
                overlayShadowSize: 0.5,
                images: [
                  //NetworkImage("https://lh3.googleusercontent.com/proxy/N6Akvwuqhvfwxt7UsJdSlWjHnMs04KCbDNd2DYU5I_uh9Lig29YRDrsLY4TpwgMbLfLPjdDhcEJJqCu-tOX26gLJ-vkXxmWQJoMO8PDgGA"),
                  //NetworkImage("https://lh3.googleusercontent.com/proxy/N6Akvwuqhvfwxt7UsJdSlWjHnMs04KCbDNd2DYU5I_uh9Lig29YRDrsLY4TpwgMbLfLPjdDhcEJJqCu-tOX26gLJ-vkXxmWQJoMO8PDgGA"),
                  AssetImage("images/m1.jpg"),
                  AssetImage("images/m2.jpg"),
                  AssetImage("images/m3.jpg"),
                  AssetImage("images/m4.jpg"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الأقسام",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
                height: 100,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(
                    height: 200,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        "images/m5.jpg",
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Female",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        "images/m5.jpg",
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Female",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        "images/m5.jpg",
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Female",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        "images/m5.jpg",
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Female",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        "images/m5.jpg",
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Text(
                        "Female",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                      height: 200,
                      width: 150,
                      child: ListTile(
                          title: Image.asset(
                            "images/m5.jpg",
                            width: 100,
                            height: 100,
                          ),
                          subtitle: Text(
                            "Female",
                            textAlign: TextAlign.center,
                          )))
                ])),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "أخر المنتجات",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
            ),
            Container(
              height: 400,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                  InkWell(
                      child: GridTile(
                        child: Image.asset("images/G1.jpg"),
                        footer: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                            "فستان السهرة",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                      ),
                      onTap: () {}),
                ],
              ),
            ),
          ],
        ));
  }
}
