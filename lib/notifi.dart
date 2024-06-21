import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class notifi extends StatefulWidget {
  const notifi({Key? key}) : super(key: key);

  @override
  State<notifi> createState() => _notifiState();
}

class _notifiState extends State<notifi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
           backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Notification'),
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
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Today',style: TextStyle(color: Colors.white),),
                         Text('15 Aug',style: TextStyle(color: Colors.white),)
                       ],
                     ),
                SizedBox(height: 20,),
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 65,
                        margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white54)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset('assets/Location-check.png'),
                              SizedBox(width: 10,),
                              Expanded(child: Text('Your order A-22514, delivered',style: TextStyle(color: Colors.white),)),
                              Text(arrname[index],style: TextStyle(color: Colors.red),)
                            ],
                          ),
                        ),
                      );
                    },),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('2 week',style: TextStyle(color: Colors.white),),
                    Text('28 Aug',style: TextStyle(color: Colors.white),)
                  ],
                ),
                SizedBox(height: 20,),
                ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 65,
                      margin: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white54)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/Location-check.png'),
                            SizedBox(width: 10,),
                            Expanded(child: Text('Your order A-22514, delivered',style: TextStyle(color: Colors.white),)),
                            Text(arrname[index],style: TextStyle(color: Colors.red),)
                          ],
                        ),
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

  var arrname = ['Now','2hr.'];
