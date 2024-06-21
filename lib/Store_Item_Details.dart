import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:user_g/Appcolor.dart';
class Store_Item_Details extends StatefulWidget {
  const Store_Item_Details({Key? key}) : super(key: key);

  @override
  State<Store_Item_Details> createState() => _Store_Item_DetailsState();
}

class _Store_Item_DetailsState extends State<Store_Item_Details> {

  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
                     Stack(
                       children: [
                         Image.asset('assets/sid.png'),
                         Padding(
                           padding: const EdgeInsets.only(top: 10,left: 20),
                           child: CircleAvatar(
                             radius: 25,
                             backgroundColor: Colors.black,
                             child: Icon(Icons.arrow_back,color: Colors.white,),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 20,left: 150),
                           child: Text('FIFA 2022',style: TextStyle(fontSize: 20,color: Colors.white),),
                         )
                       ],
                     ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                children: [
                     Container(
                       height: 177,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(12),
                         color: Appcolor.PrimaryColor1,
                         border: Border.all(color: Colors.white54)
                       ),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Image.asset('assets/sid1.png'),
                               SizedBox(width: 10,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('FIFA 2022',style: TextStyle(fontSize: 15,color: Colors.white54),),
                                   Row(
                                     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Icon(Icons.storefront,color: Colors.white54),
                                       SizedBox(width: 5,),
                                       Text('Gamers Store',style: TextStyle(color: Appcolor.PrimaryColor2,decoration: TextDecoration.underline),),
                                       SizedBox(width: 5,),
                                       Icon(Icons.check_circle,color: Appcolor.PrimaryColor2,size: 15,),
                                       SizedBox(width: 10,),
                                       Column(
                                         children: [
                                           Icon(Icons.favorite,color: Colors.white54,),
                                           Text('Favorite',style: TextStyle(color: Colors.white54),),

                                         ],
                                       )
                                     ],
                                   ),
                                   Text('Riyadh',style: TextStyle(color: Colors.white54)),
                                   SizedBox(height: 10,),
                                   Row(
                                     children: [
                                       RatingBar(
                                         initialRating: 3,
                                         // Set the initial rating value
                                         direction: Axis.horizontal,
                                         allowHalfRating: true,
                                         itemCount: 5,
                                         ratingWidget: RatingWidget(
                                           full: Icon(
                                             Icons.star,
                                             color: Colors.yellow,
                                           ),
                                           half: Icon(Icons.star_half),
                                           empty: Icon(Icons.star_border),
                                         ),
                                         itemSize: 20.0,
                                         // Adjust the size of the rating stars
                                         itemPadding:
                                         EdgeInsets.symmetric(horizontal: 2.0),
                                         onRatingUpdate: (rating) {
                                           // Handle the rating update if needed
                                         },
                                       ),
                                       Text('4.0', style: TextStyle(color: Colors.white54),),
                                       SizedBox(width: 10,),
                                       Column(
                                         children: [
                                           Icon(Icons.share,color: Colors.white54,),
                                           Text('Share',style: TextStyle(color: Colors.white54),)
                                         ],
                                       )
                                     ],
                                   ),
                                   Text('Published July 22nd',style: TextStyle(color: Colors.white54))
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                    SizedBox(height: 20,),
                    Container(
                      height: 100,
                      width: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Appcolor.PrimaryColor1,
                          border: Border.all(color: Colors.white54)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Product Delivery Options',style: TextStyle(color: Colors.red,fontSize: 20),),
                            Text('Hand to hand delivery',style: TextStyle(color: Colors.white54)),
                            Text('Send with shipping company',style: TextStyle(color: Colors.white54))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 250,
                      // width: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Appcolor.PrimaryColor1,
                          border: Border.all(color: Colors.white54)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('About Game',style: TextStyle(color: Colors.red,fontSize: 20)),
                            Text('Powered by Football™, EA SPORTS™ FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode',style: TextStyle(fontSize: 15,color: Colors.white54),),
                            SizedBox(height: 15,),
                            Text('Powered by Football™, EA SPORTS™ FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode',style: TextStyle(fontSize: 15,color: Colors.white54),)

                          ],
                        ),
                      ),
                    )
                ],
              ),
                  ),
              Divider(thickness: 1,color: Colors.white54,),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text('Price',style: TextStyle(color: Colors.red),),
                    SizedBox(width: 10,),
                    Text('\$55',style: TextStyle(color: Colors.red,fontSize: 20),),
                    SizedBox(width: 10,),
                    Expanded(child: Text('tax Incl.',style: TextStyle(color: Colors.white54),)),
                    Icon(Icons.shopping_cart,color: Colors.red,size: 35,),
                    SizedBox(width: 10,),
                    Container(
                      height: 50,
                      width: 100,
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
                      child: Center(child: Text('Buy',style: TextStyle(color: Colors.white),)),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
