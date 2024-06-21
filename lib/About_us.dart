import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class About_us extends StatefulWidget {
  const About_us({Key? key}) : super(key: key);

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text('About us'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                  height: 680,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset('assets/sp.png',height: 150,width: 150,)),
                        Text('User G',style: TextStyle(fontSize: 20,color: Colors.white),),
                        SizedBox(height: 8,),
                        Text('We are the GG website, which is under the ownership of a good game for electronic marketing, a Saudi institution with full Saudi management. We specialize in marketing and promoting goods, products and information about others, whether an individual, an institution or a company, and the institution specializes in everything related to electronic games, whether It was devices, products, information or spare parts, and that the GG site allows the user, whether an individual, an institution or a company, to display his products by creating an advertisement on the site, and also allows the user, whether an individual, an organization or a company, to purchase any product that was advertised through Users in a manner that does not contravene the rules and policies of use of the site.',style: TextStyle(color: Colors.white,fontSize: 15),)
                      ],
                    ),
                  ),
                )
            ],
            ),
          ),
        ),
      ),
    ));
  }
}
