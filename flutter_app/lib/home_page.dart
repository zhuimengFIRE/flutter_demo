
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Icon(Icons.ac_unit),
              ),
              Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Text("输入手机号码，登录或者注册", style: TextStyle(color: Color.fromRGBO(105, 105, 105, 1), fontSize: 16, fontWeight: FontWeight.bold,),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 65),
                child: Text("手机号", style: TextStyle(fontSize:12 ),),
              ),


              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: <Widget>[
                    Text("+86", style: TextStyle(fontSize: 14),),
                    Icon(Icons.keyboard_arrow_down),
                    Expanded(
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "手机号",
                        ),
                        onChanged: (value){

                        },
                      ),
                    ),
                  ],
                ),
              ),



              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text("验证码", style: TextStyle(fontSize:12 ),),
              ),




              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Stack(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "请输入验证码",
                        ),
                        onChanged: (value){

                        },
                      ),
                    ),
                    FlatButton(onPressed: (){}, child: Text("获取验证码"))
                  ],
                  alignment: Alignment.centerRight,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Container(
                    width: 125,
                    height: 36,
                    child: FlatButton(
                      color: Colors.red,
                      child: Text("登录/注册",style: TextStyle(fontSize: 14, color: Colors.white),),
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                  ),
                ),
              ),



              Spacer(),

              Center(child: Icon(Icons.format_align_justify)),






            ],
          ),
        ),
      )
    );
  }
}
