import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Loader.dart';
class Withdrawal extends StatefulWidget {
  const Withdrawal({Key? key}) : super(key: key);

  @override
  State<Withdrawal> createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Withdrawal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                  Center(child: Text('Amount',style: TextStyle(fontSize: 15,color: Colors.white24),)),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: TextField(
                      decoration: InputDecoration(
                        hintText: 'N0.00',
                        hintStyle: TextStyle(fontSize: 25,color: Colors.white,)
                      ),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ),
                SizedBox(height: 50,),
                Center(child: Text('N50,623.51',style: TextStyle(fontSize: 15,color: Colors.white24))),
                Center(child: Text('AVAILABLE BALANCE',style: TextStyle(fontSize: 15,color: Colors.white24))),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Image.asset('assets/acc.png'),
                    SizedBox(width: 5,),
                    Text('Withdraw Money To',style: TextStyle(fontSize: 15,color: Colors.white)),

                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          SizedBox(height: 55,width: 10,),
                          Image.asset('assets/wit.png',height: 40,width: 40,),
                          SizedBox(height: 29,width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('Guaranty Trust Bank',style: TextStyle(color: Colors.white),),
                               Text('.... .... .... 3251',style: TextStyle(color: Colors.white)),
                            ],
                          )

                        ],
                      ),
                    ],
                  )
                ),
                SizedBox(height: 125,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loader(),));
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
                    child: Center(child: Text('Submit',style: TextStyle(color: Colors.white),)),
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
