import 'package:flutter/material.dart';
import 'package:mrbombao/LoginPage.dart';

class ForgetPasswordPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Flexible(child: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
        )),

        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => loginpage(),)
                );
              },),
          ),

          body: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(16),
                child: Text('忘記密碼',
                  style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),),
              ),

              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(16, 16, 16, 5),
                child: Text('電子郵件',style: TextStyle(fontSize: 16,color: Colors.grey),),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    hintText: 'example@example.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              //EmailTextField

              Padding(padding: EdgeInsets.only(right: 16),
                child: Container(
                  alignment: Alignment.topRight,
                  child: RaisedButton(
                      child: Text('確認',style: TextStyle(fontSize: 16),),
                      textColor: Colors.white,
                      color: Color.fromARGB(255, 25, 153, 190),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      onPressed: () {}),
                ),
              )


            ],
          ),
        )
      ],
    );
  }



}