import 'package:flutter/material.dart';
import 'package:user_g/Account_setup.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Withdrawal.dart';
class My_wallet extends StatefulWidget {
  const My_wallet({Key? key}) : super(key: key);

  @override
  State<My_wallet> createState() => _My_walletState();
}

class _My_walletState extends State<My_wallet> {
  @override
  Widget build(BuildContext context) {
    AlertDialog _alertDialog=AlertDialog(
      backgroundColor: Appcolor.PrimaryColor4,
        titlePadding: EdgeInsets.all(0.0),
        title: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            //  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              color: Appcolor.PrimaryColor,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/su.png'),
                SizedBox(height: 20,),
                Text('Confirmation',style: TextStyle(color: Colors.white54),),
                SizedBox(height: 20,),
                Text('Do you want to submit a profit request',style: TextStyle(color: Colors.white54,fontSize: 14))

              ],
            )),
               content:
               Container(
              decoration: BoxDecoration(
                //color: Appcolor.PrimaryColor1
          // border: Border(top: BorderSide(color: Appcolor.PrimaryColor2,width: 6))
        ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red)
                        ),
                        child: Center(child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                      ),
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
                       child: Center(child: Text('Submit request',style: TextStyle(color: Colors.white,fontSize: 13),)),
                     )
                   ],
                 ),
      )
    );

    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title:  Text('My wallet'),
        leading: Icon(Icons.menu),
        titleSpacing: 100,
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
                    height: 480,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Appcolor.PrimaryColor1
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                       // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15,),
                          Image.asset('assets/Frame (2).png'),
                          SizedBox(height: 20,),
                          Text('Your Profit',style: TextStyle(fontSize: 20,color: Colors.white),),
                          Text('150  SAR',style: TextStyle(fontSize: 20,color: Colors.red)),
                          SizedBox(height: 25,),
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
                            child: Center(child: ElevatedButton(
                                onPressed: (){
                                  showDialog(context: context, builder: (BuildContext context){
                                    return _alertDialog;
                                  });
                                },
                                child: Text('Submit Profit Request',style: TextStyle(color: Colors.white),),
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(const Size(360, 50)),
                                  backgroundColor: MaterialStateProperty.all(Colors.red),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      )
                                  )
                              ),
                            )
                            ),
                          ),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Withdrawal(),));
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                 border: Border.all(color: Colors.red)
                              ),
                              child: Center(child: Text('Withdraw',style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('History',style: TextStyle(fontSize: 20,color: Colors.white),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Account_setup(),));
                      },
                      child: Container(
                        height:27,
                        width: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white
                        ),
                        child: Center(child: Text('Add Bank',style: TextStyle(color: Appcolor.PrimaryColor2),)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text('Money Added',style: TextStyle(color: Colors.white),),
                      subtitle: Text('78************123',style: TextStyle(color: Colors.white54)),
                      trailing: Text('+\$500',style: TextStyle(color: Colors.greenAccent)),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text('Money Deducted ',style: TextStyle(color: Colors.white),),
                      subtitle: Text('78************123',style: TextStyle(color: Colors.white54)),
                      trailing: Text('+\$500',style: TextStyle(color: Colors.red)),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text('Money Added',style: TextStyle(color: Colors.white),),
                      subtitle: Text('78************123',style: TextStyle(color: Colors.white54)),
                      trailing: Text('+\$50',style: TextStyle(color: Colors.greenAccent)),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text('Money Deducted ',style: TextStyle(color: Colors.white),),
                      subtitle: Text('78************123',style: TextStyle(color: Colors.white54)),
                      trailing: Text('+\$50',style: TextStyle(color: Colors.red)),
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
