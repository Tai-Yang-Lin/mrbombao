import 'package:flutter/material.dart';
import 'main.dart';
import 'package:mrbombao/RegisterPage.dart';
import 'package:mrbombao/ForgetPasswordPage.dart';
import 'package:mrbombao/master/RefrigerationPage.dart';


class loginpage extends StatelessWidget{
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
                  context, MaterialPageRoute(builder: (context) => homepage(),)
              );
            },),
          ),

         body: Column(
           children: [
             Container(
               alignment: Alignment.topLeft,
               padding: EdgeInsets.all(16),
               child: Text('登入',
                 style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),),
             ),

             Container(
               alignment: Alignment.topLeft,
               padding: EdgeInsets.fromLTRB(16, 16, 16, 5),
               child: Text('帳號',style: TextStyle(fontSize: 16,color: Colors.grey),),
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

             Container(
               alignment: Alignment.topLeft,
               padding: EdgeInsets.fromLTRB(16, 5, 16, 5),
               child: Text('密碼',style: TextStyle(fontSize: 16,color: Colors.grey),),
             ),

             Container(
               padding: EdgeInsets.fromLTRB(16, 5, 16, 0),
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                   hintText: '⋯⋯⋯⋯',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(5),
                   ),
                 ),
               ),
             ),
             //PasswordTextField

             Container(
               alignment: Alignment.topLeft,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Container(width: 10,),

                   TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordPage(),));},
                     child: Text('忘記密碼', style: TextStyle(fontSize: 14,color: Colors.grey),),),

                   Text('|',style: TextStyle(fontSize: 14,color: Colors.grey),),

                   TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => registerpage(),));},
                     child: Text('註冊', style: TextStyle(fontSize: 14,color: Colors.grey),),),
                 ],),
             ),
             //TextButton*2

             Padding(padding: EdgeInsets.only(right: 16),
                 child: Container(
                   alignment: Alignment.topRight,
                   child: RaisedButton(
                       child: Text('登入',style: TextStyle(fontSize: 16),),
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