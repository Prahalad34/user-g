import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Contact_us extends StatefulWidget {
  const Contact_us({Key? key}) : super(key: key);

  @override
  State<Contact_us> createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text('Contact us',style: TextStyle(color: Colors.white),),
        ),
        leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                    Image.asset('assets/cu.png'),
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
                        hintText: 'Full Name*',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
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
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    minLines: 10,
                    maxLines: 20,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Love to hear from you, Get in touch 👋🏻',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 80,),
                Container(
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
                  child: Center(child: Text('Send',style: TextStyle(color: Colors.white),)),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
