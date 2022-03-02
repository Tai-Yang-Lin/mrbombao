import 'package:flutter/material.dart';
import 'package:mrbombao/LoginPage.dart';
import 'package:mrbombao/RegisterPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mr.bombao',
      home: Scaffold(
        body: homepage(),
      ));
  }
  }

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/loginbackground.jpg'),
              fit: BoxFit.fill
            ))
        ),
        //BackgroundImage

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(1, 229, 229, 229),
                        borderRadius: BorderRadius.circular(90)
                    ),
                    child: Image.asset('assets/logotext.png'),
                  ),
                ),
                //LogoImage

                Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
                    child:Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 50,
                      width: 300,
                      child: RaisedButton(
                          child: Text('登入'),
                          textColor: Color.fromARGB(255,244,172,26),
                          color: Colors.white,
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => loginpage(),)
                            );
                          }),
                    )
                ),
                //LoginButton

                Padding(padding: EdgeInsets.symmetric(vertical: 10.0),
                    child:Container(
                      height: 50,
                      width: 300,
                      child: RaisedButton(
                          child: Text('註冊'),
                          textColor: Colors.white,
                          color: Color.fromARGB(255,244,172,26),
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => registerpage(),)
                            );
                          }),
                    )
                ),
                //RegisterButton

              ],
            ),
          ),
        )
      ]);
  }
  
}