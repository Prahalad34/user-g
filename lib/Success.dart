import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                      Image.asset('assets/bags.png'),
                Text('Congratulations! Your \n payment was successful.',style: TextStyle(fontSize: 25,color: Colors.white),),
                SizedBox(height: 5,),
                Text('Your order will be delivered soon.\nThank you for choosing our app!',style: TextStyle(color: Colors.white54,fontSize: 20)),
                Divider(thickness: 1,color: Colors.red,)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
