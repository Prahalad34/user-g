import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Chat1 extends StatefulWidget {
  const Chat1({Key? key}) : super(key: key);

  @override
  State<Chat1> createState() => _Chat1State();
}

class _Chat1State extends State<Chat1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
           appBar: AppBar(
             toolbarHeight: 120,
             backgroundColor: Appcolor.PrimaryColor,
             title: Column(
               children: [
                 Image.asset('assets/m.png',height: 60,width: 60,),
                 Text('Gamers Store',style: TextStyle(color: Colors.red),)
               ],
             ),
             titleSpacing: 60,
             actions: [
               Padding(
                 padding: const EdgeInsets.only(right: 40),
                 child: Icon(Icons.info,color: Colors.red,),
               )
             ],
             bottom:  const PreferredSize(
               preferredSize: Size.fromHeight(1),
               child: Divider(thickness: 1,color: Colors.white54,height: 8,),
             ),
           ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ListView.builder(
                  itemCount: messages.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Container(
                      padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                      child: Align(
                        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.red[200]),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 190,),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.red)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ask for something here.',
                            hintStyle: TextStyle(color: Colors.white54),
                            suffixIcon: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.attachment,color: Colors.red,),
                                SizedBox(width: 15,),
                                Icon(Icons.location_on,color: Colors.red,),
                                SizedBox(width: 15,),
                                Container(
                                  height: 50,
                                  width: 70,
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
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                                    color: Colors.red
                                  ),
                                  child: Icon(Icons.send,color: Colors.white,),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 70,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                    //     color: Colors.red
                    //   ),
                    // )

              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, How could we help you?", messageType: "receiver"),
  ChatMessage(messageContent: "How much is the PS5 controller?", messageType: "receiver"),
  ChatMessage(messageContent: "Original \$100", messageType: "sender"),
  ChatMessage(messageContent: "High copy \$65", messageType: "receiver"),
  ChatMessage(messageContent: "thank you ", messageType: "sender"),
  ChatMessage(messageContent: "You welcome ✌🏻 ", messageType: "sender"),
];
