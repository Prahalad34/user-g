import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Home.dart';
class Withdraw_Successful extends StatefulWidget {
  const Withdraw_Successful({Key? key}) : super(key: key);

  @override
  State<Withdraw_Successful> createState() => _Withdraw_SuccessfulState();
}

class _Withdraw_SuccessfulState extends State<Withdraw_Successful> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/ws.png')),
            SizedBox(height: 8,),
            Center(
              child: Text('Your withdrawal request has been\n sent to the admin.Sit tight! Well keep\n you updated once its confirmed.',
              style: TextStyle(color: Colors.white,fontSize: 17),),
            ),
            SizedBox(height: 35,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back,color: Colors.red,size: 40,),
                  SizedBox(width: 5,),
                  Text('Back to Home',style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
