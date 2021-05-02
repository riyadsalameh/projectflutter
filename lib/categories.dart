import 'dart:convert';

import 'package:app/Products.dart';
import 'package:flutter/material.dart';
 import 'package:http/http.dart' as http;

import 'Cate.dart';
// import 'dart:async';
// import 'dart:convert';

class categories extends StatefulWidget {
  // final String namecat;
  // final int id;
  // final String imageurl;
  // const categories({
  //   this.namecat,
  //   this.id,
  //   this.imageurl,
  // });

  @override
  State<StatefulWidget> createState() => categoriesstate();
}

class categoriesstate extends State<categories> {
  Future getcat() async {
    var url = "http://192.168.1.5:3000/getAllcate";
    final res = await http.get((url));
      final obj = jsonDecode(res.body);
      print(obj);

      setState(() {

          cate= obj.map<Cate>((json) => Cate.fromJson(json)).toList();
        //  print(pro);
      });

  }
List<Cate> cate;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Categories"),
        ),
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            if (cate!=null)
            for(var i=0;i<cate.length;i++)
            catwidget(context, cate[i].name, cate[i].name+".jpg",cate[i].id),

          ],
        )
    );
  }
}

Widget catwidget(BuildContext context, String title, String imageurl ,int id) {
  return InkWell(
    child: Container(
        child: Card(
      child: Column(
        children: [
          Expanded(
              child: Image.network(
            "http://192.168.1.5:3000/uploads/uploads/"+imageurl,
            fit: BoxFit.cover,
          )),
          Container(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )
        ],
      ),
    )),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductsScreen(title:title,id:id)));
    },
  );
}
