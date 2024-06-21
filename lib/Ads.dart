import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Ads'),
        leading: Icon(Icons.menu),
        titleSpacing: 120,
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
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(Icons.search,color: Colors.white,)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Ads',style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor1
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(imagename[index]),
                              //Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                                      SizedBox(width: 10,),
                                     // Icon(Icons.favorite,color: Colors.red,),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Games store',style: TextStyle(color: Appcolor.PrimaryColor2 ,decoration: TextDecoration.underline),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.storefront,color: Colors.white24,)
                                    ],
                                  ),
                                  Text('PS4 - PS5',style: TextStyle(color: Colors.white24),),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text('4.6',style: TextStyle(color: Colors.yellow),),
                                      SizedBox(width: 65,),
                                      Text('\$55',style: TextStyle(color: Colors.red),),
                                      SizedBox(width: 5,),
                                      Text('tax Incl.',style: TextStyle(color: Colors.white54),)
                                    ],
                                  ),

                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 60,),
                                child: Icon(Icons.favorite,color: Colors.white54,),
                              ),
                            ],
                          ),
                        ],
                      ),

                    );
                  },)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

var imagename = ['assets/mf.png','assets/mf1.png','assets/mf2.png','assets/mf3.png','assets/mf4.png'];

var arrname = ['FIFA 2022','Grand theft auto','Shadow of war','FIFA 2022','FIFA 2022'];
