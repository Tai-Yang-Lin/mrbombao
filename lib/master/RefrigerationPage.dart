import 'package:flutter/material.dart';


class ReftigerationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: (InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search'
                  )),
                ),
              ),
            ),
            ),

          body: Container(

          ),

          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(icon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(icon: Icon(Icons.build)),
          ],

          ),



          ),
      ],
    );
  }
}
