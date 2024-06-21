import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Confirm_Address.dart';
class My_cart extends StatefulWidget {
  const My_cart({Key? key}) : super(key: key);

  @override
  State<My_cart> createState() => _My_cartState();
}

class _My_cartState extends State<My_cart> {


  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('My cart'),
        leading: Icon(Icons.menu),
        titleSpacing: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                   Row(
                     children: [
                       Text('2 Orders',style: TextStyle(fontSize: 20,color: Colors.white),),
                       SizedBox(width: 10,),
                       Text('3 items',style: TextStyle(color: Colors.white54),)
                     ],
                   ),

                  SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Orders id: M-536',style: TextStyle(color: Colors.white),),
                    SizedBox(width: 10,),
                    Text('20-09-2020',style: TextStyle(color: Colors.white54),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Image.asset('assets/m.png'),
                            Text('Gamers Store',style: TextStyle(color: Appcolor.PrimaryColor5,decoration: TextDecoration.underline,fontSize: 18),),
                          SizedBox(width: 5,),
                            Icon(Icons.star,color: Colors.yellow,),
                            SizedBox(width: 5,),
                            Expanded(child: Text('4.0',style: TextStyle(color: Colors.white),)),
                            Icon(Icons.delete,color: Colors.white54,),
                            Icon(Icons.clear,color: Colors.white54,)
                          ],
                        ),
                        Divider(thickness: 1,color: Colors.white10,height: 20,),
                        ListView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(imagename[index]),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(arrname[index],style: TextStyle(color: Colors.white),),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(color: Colors.white24)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.fire_truck,color: Colors.blue,),
                                                    SizedBox(width: 5,),
                                                    Text('Shopping',style: TextStyle(color: Colors.blue),)
                                                  ],
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                height: 40,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    border: Border.all(color: Colors.white24)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text('Disc 8%',style: TextStyle(color: Colors.amber),)
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              _itemCount!=0? Container(
                                                  child: new  IconButton(icon: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(3),
                                                          border: Border.all(color: Colors.white54)
                                                      ),
                                                      child: new Icon(Icons.remove,color: Colors.white54)),onPressed: ()=>setState(()=>_itemCount--),)):new Container(),
                                              SizedBox(width: 10,),
                                              new Text(_itemCount.toString(),style: TextStyle(color: Colors.red),),
                                              SizedBox(width: 10,),
                                              Container(
                                                  child: new IconButton(icon: Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(3),
                                                          border: Border.all(color: Colors.white54)
                                                      ),
                                                      child: new Icon(Icons.add,color: Colors.white54,)),onPressed: ()=>setState(()=>_itemCount++))),
                                              SizedBox(width: 15,),
                                              Column(
                                                children: [
                                                  Text('\$245,78',style: TextStyle(color: Colors.white54,decoration: TextDecoration.lineThrough),),
                                                  SizedBox(height: 5,),
                                                  Text('\$245,78',style: TextStyle(color: Colors.red),)
                                                ],
                                              )


                                            ],
                                          ),

                                        ],
                                      )
                                    ],
                                  ),
                                 // Divider(thickness: 1,color: Colors.white54,)
                                ],
                              ),
                            );
                          },),
                      ],
                    ),
                  ),
                ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Confirm_Address(),));
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
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16)),
                  color: Colors.red
              ),
              child: Center(child: Text('CheckOut',style: TextStyle(color: Colors.white),)),
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

var imagename = ['assets/os.png','assets/os1.png'];
var arrname = ['COD4 - Call of Duty 4 - Ps5','FH5 - Forza Horizon 5   '];
