import 'package:flutter/material.dart';
import 'package:user_g/All_ads.dart';
import 'package:user_g/Appcolor.dart';
class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {

  bool _InprogressSelected = false;

  bool _CompletedSelected = false;

  bool _CanceledSelected = false;

  bool _AlladsSelected = false;

  bool _OrderSelected = false;


  int isActive = 0;

  int isActive1 = 0;



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
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     InkWell(
                       onTap: (){
                         setState(() {
                           _AlladsSelected = true;
                           _OrderSelected= false;
                            isActive1 = 0;
                         });
                         Navigator.push(context, MaterialPageRoute(builder: (context) => All_ads(),));
                       },
                       child: Container(
                         height: 40,
                         width: 150,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                             color: _AlladsSelected ? Colors.red : Colors.black
                         ),
                         child: Center(child: Text('All Ads',style: TextStyle(color: Colors.white),)),
                       ),
                     ),
                     InkWell(
                       onTap: (){
                         setState(() {
                           _AlladsSelected = false;
                           _OrderSelected= true;
                            isActive1 = 1;
                         });
                       },
                       child: Container(
                         height: 40,
                         width: 150,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                             color: _OrderSelected ? Colors.red : Colors.black
                         ),
                         child: Center(child: Text('Orders',style: TextStyle(color: Colors.white),)),
                       ),
                     )
                   ],
                 ),
                Divider(thickness: 1,color: Colors.red,),

                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          _InprogressSelected = true;
                          _CompletedSelected= false;
                          _CanceledSelected= false;
                          isActive = 0;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _InprogressSelected ? Colors.red : Colors.black
                        ),
                        child: Center(child: Text('In progress',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _InprogressSelected = false;
                          _CompletedSelected= true;
                          _CanceledSelected= false;
                          isActive = 1;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: _CompletedSelected ? Colors.red : Colors.black
                        ),
                        child: Center(child: Text('Completed',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _InprogressSelected = false;
                          _CompletedSelected= false;
                          _CanceledSelected= true;
                          isActive = 2;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: _CanceledSelected ? Colors.red : Colors.black
                        ),
                        child: Center(child: Text('Canceled',style: TextStyle(color: Colors.white),)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1,color: Colors.white54,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order ID : A-22514',style: TextStyle(color: Colors.white),),
                    Text('July 25, 2022',style: TextStyle(color: Colors.white))
                  ],
                ),

                isActive == 0 ?
                Inprogress()
                    : isActive == 1 ?
                Completed()
                    : Canceled()

              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget AllAds()=> Column(
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
                SizedBox(height: 10,),
                Image.asset('assets/spd.png')
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
      Container(
        height: 50,
        //width: 200,
        decoration: BoxDecoration(
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
      )
    ],
  );

  Widget Inprogress()=> Column(
    children: [
      SizedBox(height: 15,),
      ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 2,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          // height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white54)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                   Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: 99,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Appcolor.PrimaryColor,
                          border: Border.all(color: Colors.white54)
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Image.asset(imagename[index]),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text(arrname[index],style: TextStyle(color: Colors.white),),
                                SizedBox(height: 5,),
                                Text('Qty - 1',style: TextStyle(color: Colors.white)),
                                SizedBox(height: 5,),
                                Text(arr1name[index],style: TextStyle(color: Colors.red),)
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                Text('Customer:',style: TextStyle(color: Colors.white54,fontSize: 20),),
                ListTile(
                  title: Text('Omar Noaman',style: TextStyle(color: Colors.white,fontSize: 14)),
                  leading: Image.asset('assets/user.png'),
                  subtitle: Text('2 hr',style: TextStyle(color: Colors.white54)),
                  trailing: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.redAccent)
                    ),
                    child: Center(child: Text('Proof of Transaction',style: TextStyle(color: Colors.red,fontSize: 12),)),
                  ),
                )
              ],
            ),
          ),
        );
      },)
    ],
  );

  Widget Completed()=> Column(
    children: [
      // Text("Hii",style: TextStyle(color: Colors.greenAccent),),
      SizedBox(height: 10,),
      Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Appcolor.PrimaryColor1
        ),
        child: Column(
          children: [
            SizedBox(height: 10,width: 10,),
            Row(
               children: [
                 SizedBox(width: 10,),
                 Image.asset('assets/inp.png'),
                 SizedBox(width: 10,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('PS4 - Play Station 4 - Sony',style: TextStyle(color: Colors.white),),
                     SizedBox(height: 5,),
                     Text('Qty - 1',style: TextStyle(color: Colors.white)),
                     Row(
                       children: [
                         Text('\$500',style: TextStyle(color: Colors.red)),
                         SizedBox(width: 80,),
                         Container(
                           height: 25,
                           width: 90,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: Colors.green.shade100
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('Completed',style: TextStyle(color: Colors.green),),
                               Icon(Icons.check,color: Colors.green,size: 15,)
                             ],
                           ),
                         )
                       ],
                     )
                   ],
                 )
               ],
            )
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Appcolor.PrimaryColor1
        ),
        child: Column(
          children: [
            SizedBox(height: 10,width: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Image.asset('assets/inp1.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('COD4 - Call of Duty 4 - Ps5',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 5,),
                    Text('Qty - 1',style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Text('\$75',style: TextStyle(color: Colors.red)),
                        SizedBox(width:80,),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green.shade100
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Completed',style: TextStyle(color: Colors.green),),
                              Icon(Icons.check,color: Colors.green,size: 15,)
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    ],
  );

  Widget Canceled()=> Column(
    children: [
      Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Appcolor.PrimaryColor1
        ),
        child: Column(
          children: [
            SizedBox(height: 10,width: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Image.asset('assets/inp.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('PS4 - Play Station 4 - Sony',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 5,),
                    Text('Qty - 1',style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Text('\$500',style: TextStyle(color: Colors.red)),
                        SizedBox(width: 80,),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade100
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Order Canceled',style: TextStyle(color: Colors.red,fontSize: 12),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Appcolor.PrimaryColor1
        ),
        child: Column(
          children: [
            SizedBox(height: 10,width: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Image.asset('assets/inp1.png'),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('COD4 - Call of Duty 4 - Ps5',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 5,),
                    Text('Qty - 1',style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Text('\$75',style: TextStyle(color: Colors.red)),
                        SizedBox(width: 80,),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red.shade100
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Order Canceled',style: TextStyle(color: Colors.red,fontSize: 12),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}

 var imagename = ['assets/inp.png','assets/inp1.png'];

 var arrname = ['PS4 - Play Station 4 - Sony','COD4 - Call of Duty 4 - Ps5'];

 var arr1name = ['\$500','\$75'];
