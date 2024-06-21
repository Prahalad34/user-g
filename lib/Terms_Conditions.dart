import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Terms_Conditions extends StatefulWidget {
  const Terms_Conditions({Key? key}) : super(key: key);

  @override
  State<Terms_Conditions> createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text('Terms & Conditions',style: TextStyle(color: Colors.white),),
        ),
        leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Terms of use',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('About us',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Terms and Conditions of Use',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Our Responsibility',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('User registration conditions',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Prohibited goods',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('The security policy of (User G)',style: TextStyle(fontSize: 20,color: Colors.white),),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white24,size: 20,)
                  ],
                ),
                Divider(height: 40,thickness: 2,color: Colors.white24,),
              ],

            ),
          ),
        ),
      ),
    ));
  }
}
