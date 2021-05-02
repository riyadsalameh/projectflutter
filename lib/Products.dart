import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';
class ProductsScreen extends StatefulWidget {
  String title="";
  int id;
  ProductsScreen({this.title,this.id});
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(widget.title),
      ) ,
        body: GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            if (pro!=null)
              for(var i=0;i<pro.length;i++)
                catwidget(context, pro[i].name, pro[i].image,pro[i].price),

          ],
        )

    );
  }
  Widget catwidget(BuildContext context, String title, String imageurl ,String price) {
    return InkWell(
      child: Container(
          child: Card(
        //    color: Colors.teal,
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                      "http://192.168.1.5:3000/uploads/uploads/"+imageurl,
                      fit: BoxFit.fitWidth,
                    )),
                Container(
                  color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        price+" \$",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
      onTap: () {
     //   Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductsScreen(title:title,id:id)));
      },
    );
  }
  List<Product> pro;
  Future getProducts() async {
    var url = "http://192.168.1.5:3000/getProductsID/"+widget.id.toString();
    final res = await http.get((url));
    final obj = jsonDecode(res.body);
    print(obj);

    setState(() {

      pro= obj.map<Product>((json) => Product.fromJson(json)).toList();
      //  print(pro);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
  }
}
