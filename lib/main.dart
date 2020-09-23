import 'package:dsc/Animation/FadeAnimation.dart';
import  'package:flutter/material.dart';
void main()=>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width:double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:Alignment.topCenter,
            colors:[
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1,Text("VSSUT CSE",style:TextStyle(color:Colors.white,fontSize: 40),),),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3,Text("LOGIN",style:TextStyle(color:Colors.white,fontSize: 40),),),


                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60,),
                      Container(
                        padding:EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(255, 95, 27, 0.3),
                            blurRadius: 20,
                            offset: Offset(0,10)
                          )]
                        ),
                        child: Column(
                          children: <Widget>[
                            FadeAnimation(1.4,Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border:Border(bottom:BorderSide(color: Colors.grey[200]))
                              ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter Email",
                                      icon:Icon(
                                        Icons.account_box,
                                        //color: kPrimaryColor,
                                      ),
                                      hintStyle: TextStyle(color:Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),

                            ),),
                            FadeAnimation(1.4,
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border:Border(bottom:BorderSide(color: Colors.grey[200]))
                                  ),
                                  child: TextField(
                                    obscureText: true,
                                    //onChanged: onChanged,
                                    decoration: InputDecoration(
                                        hintText: "Enter Password",
                                        icon:Icon(
                                          Icons.lock,
                                          //color: kPrimaryColor,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.visibility,

                                        ),
                                        hintStyle: TextStyle(color:Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ))
                          ],
                        ),

                      ),
                      SizedBox(height:40,),
                      FadeAnimation(1.5,Text("Forgot Password ? ",style:TextStyle(color:Colors.grey),),),
                      SizedBox(height:40,),
                      FadeAnimation(1.6,
                        Container(
                          height:50,
                          margin:EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:Colors.orange[900]
                          ),
                          child: Center(
                            child:Text("Login",style:TextStyle(color:Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                        ),),


                    ],
                  ),
                ),
              ),
            )

          ],
        ),

      ),
    );

  }

}