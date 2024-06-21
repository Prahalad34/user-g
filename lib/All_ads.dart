import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/NEW_Post1.dart';
class All_ads extends StatefulWidget {
  const All_ads({Key? key}) : super(key: key);

  @override
  State<All_ads> createState() => _All_adsState();
}

class _All_adsState extends State<All_ads> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('My Ads'),
        leading: Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                       Container(
                         height: 430,
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Appcolor.PrimaryColor1
                           ) ,
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Row(
                                   children: [
                             Image.asset('assets/ald.png'),
                                     SizedBox(width: 10,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text('Marvels Spider-Man:\n Miles Morales',style: TextStyle(fontSize: 15,color: Colors.white),),
                                         Text('PS4  - PS5',style: TextStyle(color: Colors.white54),),
                                         SizedBox(height: 10,),
                                         Text('\$55',style: TextStyle(color: Colors.red),),
                                         Text('Your ads will Expired in 48hrs of posting.',style: TextStyle(color: Colors.blue,fontSize: 10),)
                                       ],
                                     )
                                   ],
                                 ),
                                 Divider(thickness: 1,color: Colors.white54,),
                                 SizedBox(height: 20,),
                                 Text('Description',style: TextStyle(fontSize: 20,color: Colors.white),),
                                 Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit  Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(fontSize: 14,color: Colors.white)),
                                SizedBox(),
                                 Image.asset('assets/spd.png',fit: BoxFit.cover,height: 155,width: 350,)
                               ],
                             ),
                           )
                       ),
                SizedBox(height: 25,),
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Center(child: Text('SOLD',style: TextStyle(color: Appcolor.PrimaryColor5),)),
                ),
                SizedBox(height: 85,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NEW_Post1(),));
                  },
                  child: Container(
                    height: 50,
                    //width: 200,
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
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('+',style: TextStyle(color: Colors.white)),
                        SizedBox(width: 8,),
                        Text('Post Ad',style: TextStyle(color: Colors.white),),
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
