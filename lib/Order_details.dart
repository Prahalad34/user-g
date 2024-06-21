import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Order_details extends StatefulWidget {
  const Order_details({Key? key}) : super(key: key);

  @override
  State<Order_details> createState() => _Order_detailsState();
}

class _Order_detailsState extends State<Order_details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Order details'),
        titleSpacing: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 440,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                               Image.asset(imagename[index]),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.gamepad,color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Expanded(child: Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 16),),),
                                  Text('Quantity (1)',style: TextStyle(color: Colors.white,fontSize: 16))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_basket_outlined,color: Appcolor.PrimaryColor5,),
                                  SizedBox(width: 5,),
                                  Text('Gamers Store',style: TextStyle(color: Appcolor.PrimaryColor5,decoration: TextDecoration.underline),),
                                  SizedBox(width: 5,),
                                  Text('-',style: TextStyle(color: Colors.white),),
                                  SizedBox(width: 5,),
                                  Icon(Icons.star,color: Colors.yellow,size: 15,),
                                  SizedBox(width: 5,),
                                  Expanded(child: Text('3.5',style: TextStyle(color: Colors.white),),),
                                  Text(arr1name[index],style: TextStyle(color: Colors.red),)
                                ],
                              ),
                            ),
                            Divider(thickness: 1,color: Colors.white54,)
                          ],
                        ),
                      );
                    },) ,
                ),
                SizedBox(height: 16,),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 55,
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
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order ID : A-22514',style: TextStyle(color: Colors.black,fontSize: 16),),
                            Text('July 25, 2022',style: TextStyle(color: Colors.black,fontSize: 16))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 700,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Name :',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('Darlene Robertson',style: TextStyle(color: Colors.white54)),
                        Text('Phone Number :',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('(808) 555-0111',style: TextStyle(color: Colors.white54)),
                        Text('Region',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('Riyadh',style: TextStyle(color: Colors.white54)),
                        Text('City',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('Saudi arabia',style: TextStyle(color: Colors.white54)),
                        Text('bulding number',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('13',style: TextStyle(color: Colors.white54)),
                        Text('Street',style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text('King Abdulaziz Branch Road',style: TextStyle(color: Colors.white54)),
                        Divider(thickness: 2,color: Colors.white10,),
                        Row(
                          children: [
                            Icon(Icons.diamond,color: Colors.white54,),
                            SizedBox(width: 5,),
                            Text('Order Discount:',style: TextStyle(color: Colors.white,)),
                            SizedBox(width: 5,),
                            Text('10%, Personal promo code',style: TextStyle(color: Colors.white54,fontSize: 13))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.white54,),
                            SizedBox(width: 5,),
                            Text('Delivery method:',style: TextStyle(color: Colors.white,)),
                            SizedBox(width: 5,),
                            Text('FedEx, 3 days, 15\$',style: TextStyle(color: Colors.white54))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm_rounded,color: Colors.white54,),
                            SizedBox(width: 5,),
                            Text('Delivery time & date : ',style: TextStyle(color: Colors.white,)),
                            SizedBox(width: 5,),
                            Text('01 - 08 - 2022 / 11:00AM',style: TextStyle(color: Colors.white54,fontSize: 11))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.wallet,color: Colors.white54,),
                            SizedBox(width: 5,),
                            Text('Payment method:',style: TextStyle(color: Colors.white,)),
                            SizedBox(width: 5,),
                            Text('**** **** **** 3947',style: TextStyle(color: Colors.white54))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('VAT :',style: TextStyle(color: Colors.white,fontSize: 20)),
                            Text('\$5',style: TextStyle(color: Colors.white54))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Total ',style: TextStyle(color: Colors.white,fontSize: 25)),
                            Text('\$175',style: TextStyle(color: Colors.red))
                          ],
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 150,
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
                            child: Center(child: Text('Ok',style: TextStyle(color: Colors.white,))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(thickness: 2,color: Colors.white10,height: 80,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red)
                  ),
                  child: Center(child: Text('Chat with Buyer',style: TextStyle(color: Colors.white54))),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    color: Colors.blue
                  ),
                  child: Center(child: Text('Confirm Receiving',style: TextStyle(color: Colors.white))),
                )

              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/od.png','assets/od1.png'];

 var arrname = ['COD4 - Call of Duty 4 - Ps5','FH5 - Forza Horizon 5   '];

 var arr1name = ['\$75','\$80'];

