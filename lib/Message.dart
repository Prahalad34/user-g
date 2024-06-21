import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Chat1.dart';
class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Center(child: Text('Message')),

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Chat1(),));
                    },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: ListTile(
                              leading: Image.asset(imagename[index]),
                              title: Text('Name',style: TextStyle(color: Colors.white),),
                              subtitle: Text('Thats great, What type of product are you...',style: TextStyle(color: Colors.white54),),
                              trailing: Text('9:40 AM',style: TextStyle(color: Colors.white54)),
                            ),
                          ),
                        ),
                        Divider(thickness: 1,color: Colors.white54,)
                      ],
                    );
                  },

                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/m.png','assets/m1.png','assets/m2.png','assets/m3.png'];
