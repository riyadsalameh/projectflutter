import 'package:app/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'home.dart';
class mydrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final Color primary = Colors.white;

  final Color active = Colors.grey.shade800;

  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]), width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: [Colors.orange, Colors.deepOrange])),
                    child: CircleAvatar(radius: 40, /* backgroundImage: AssetImage(image)*/),),
                  SizedBox(height: 5.0),

                  Text("Properties", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                  Text("@erika07", style: TextStyle(color: active, fontSize: 16.0),),
                  SizedBox(height: 30.0),
                  
                  _buildRow(Icons.home , "Home", (){Navigator.of(context).pushNamed('home');}),
                  _buildDivider(),
                  _buildRow(Icons.category_outlined, "Catergories",(){Navigator.of(context).pushNamed('categories');} ),
                  _buildDivider(),
                  _buildRow(Icons.message, "Messages",(){}),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Notifications",  (){}),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings", () {}),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact us", (){}),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help" , (){}),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    /// ----------------
    /// Building drawer here .
    /// ---------------
  }



  /// ---------------------------
  /// Building divider for drawer .
  /// ---------------------------

  Divider _buildDivider() {
    return Divider(
      color: divider,


    );
  }

  /// ---------------------------
  /// Building item  for drawer .
  /// ---------------------------

  Widget _buildRow(IconData icon, String title,Function tap ,{bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return ListTile(
      //padding: const EdgeInsets.symmetric(vertical: 5.0),

         leading: Icon(icon, color: active,),
        title: Text(title, style: tStyle, ),
        onTap:tap,


       /*   Spacer(),
          if (showBadge)
            Material(
              color: Colors.deepOrange,
              elevation: 5.0,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text("10+", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),),),
            ),*/
       // ],
      );


  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
