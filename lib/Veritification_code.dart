import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/New_Password.dart';
class Veritification_code extends StatefulWidget {
  const Veritification_code({Key? key}) : super(key: key);

  @override
  State<Veritification_code> createState() => _Veritification_codeState();
}

class _Veritification_codeState extends State<Veritification_code> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Verification code',style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Center(child: Image.asset('assets/veri.png')),
              SizedBox(height: 15,),
              Text('Enter the OTP authentication code below',style: TextStyle(color: Colors.white,fontSize: 15),),
              SizedBox(height: 15,),
              Center(
                  child: PinCodeTextField(
                    controller: controller,
                    maxLength: 4, // Set the length of the OTP
                    autofocus: true,
                    wrapAlignment: WrapAlignment.spaceAround,
                    pinBoxWidth: 50,
                    pinBoxHeight: 50,
                    pinBoxRadius: 10,
                    pinBoxBorderWidth: 1,
                    pinBoxColor: Colors.white,
                    pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 10),
                    onDone: (text) {
                      // This callback is triggered when the user enters the complete OTP
                      // print("OTP Entered: $text");
                    },
                  ),

              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.timer_rounded,color: Colors.white,size: 25,),
                  Text('60s',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),

              SizedBox(height: 100,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => New_Password(),));
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
              SizedBox(height: 25,),
              Text('Resend the code again',style: TextStyle(fontSize: 15,color: Colors.red),)

            ],
          ),
        ),
      ),
    ));
  }
}
