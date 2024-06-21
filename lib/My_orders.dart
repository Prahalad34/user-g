import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Order_details.dart';
class My_orders extends StatefulWidget {
  const My_orders({Key? key}) : super(key: key);

  @override
  State<My_orders> createState() => _My_ordersState();
}

class _My_ordersState extends State<My_orders> {

  bool _InprogressSelected = false;
  bool _CompletedSelected = false;
  bool _CanceledSelected = false;


  int isActive = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('My orders'),
        leading: Icon(Icons.menu),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
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
                 SizedBox(height: 40,),
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
                      InkWell(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
                        // },
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Order_details(),));
                          },
                          child: Container(
                            height: 99,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Appcolor.PrimaryColor,
                              // border: Border.all(color: Colors.white54)
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
                          ),
                        ),
                      )
                    ],
                  ),
                  Divider(thickness: 1,color: Colors.white54,),
                  SizedBox(height: 10,),
                  Text('Cancel Order:',style: TextStyle(color: Colors.white54,fontSize: 20),),

                ],
              ),
            ),
          );
        },),
      SizedBox(height: 80,),
      Text('Rate our service',style: TextStyle(fontSize: 20,color: Colors.white54),),
      Text('Give Rating',style: TextStyle(fontSize: 20,color: Colors.red))
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
                        SizedBox(width: 100,),
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
                        SizedBox(width: 100,),
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
                        SizedBox(width: 100,),
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
                        SizedBox(width: 100,),
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
