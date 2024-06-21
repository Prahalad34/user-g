import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Profile.dart';
class Personal_information extends StatefulWidget {
  const Personal_information({Key? key}) : super(key: key);

  @override
  State<Personal_information> createState() => _Personal_informationState();
}

class _Personal_informationState extends State<Personal_information> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Personal information'),
        titleSpacing: 50,

      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('Name :',style: TextStyle(fontSize: 18,color: Colors.white54,fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                      //  borderRadius: BorderRadius.circular(8)
                      ),
                      hintText: "Sara cruz",
                      hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Mail :',style: TextStyle(fontSize: 18,color: Colors.white54,fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                          //  borderRadius: BorderRadius.circular(8),
                         // borderSide: BorderSide(color: Colors.white54)
                        ),
                        hintText: "sara.cruz@example.com",
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Phone Number :',style: TextStyle(fontSize: 18,color: Colors.white54,fontWeight: FontWeight.w700),),
                SizedBox(height: 12,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                           // borderRadius: BorderRadius.circular(8)
                        ),
                        hintText: "+966-504218617",
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 80,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
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
                    child: Center(child: Text('Update',style: TextStyle(color: Colors.white),)),
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
