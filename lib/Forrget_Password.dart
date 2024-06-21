import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Veritification_code.dart';
class Forrget_Password extends StatefulWidget {
  const Forrget_Password({Key? key}) : super(key: key);

  @override
  State<Forrget_Password> createState() => _Forrget_PasswordState();
}

class _Forrget_PasswordState extends State<Forrget_Password> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
      title: Text('Recover Password',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Center(child: Image.asset('assets/Frame.png')),
              SizedBox(height: 15,),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',style: TextStyle(color: Colors.white,fontSize: 15),),
              SizedBox(height: 15,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white54)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                      ),
                      hintText: 'Phone Number*',
                      hintStyle: TextStyle(color: Colors.white54),
                  ),
                  keyboardType: TextInputType.numberWithOptions(),
                ),
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Veritification_code(),));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      gradient:LinearGradient(
                        colors: [
                          Appcolor.PrimaryColor6,
                          Appcolor.PrimaryColor7
                          //add more colors for gradient
                        ],
                        // begin: Alignment.bottomRight, //begin of the gradient color
                        // end: Alignment.bottomLeft, //end of the gradient color
                        // stops: [0, 0.2, 0.5, 0.8]
                      ),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red
                  ),
                  child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
