
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:user_g/Home.dart';

import 'Appcolor.dart';
class Post_Ad extends StatefulWidget {
  const Post_Ad({Key? key}) : super(key: key);

  @override
  State<Post_Ad> createState() => _Post_AdState();
}

class _Post_AdState extends State<Post_Ad> {

  final List<String> _type = ['Playstation','X Box-series'];

  // the selected value
  String? _selectedtype;

  final List<String> _time = ['Playstation','Playstation'];

  // the selected value
  String? _selectedTime;
  bool _isChecked = false;




  @override
  Widget build(BuildContext context) {
    AlertDialog _alertDialog=AlertDialog(
        backgroundColor: Appcolor.PrimaryColor4,
        titlePadding: EdgeInsets.all(0.0),
        title: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
             // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              color: Appcolor.PrimaryColor,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/su.png'),
                SizedBox(height: 20,),
                Text('Post an ad?',style: TextStyle(color: Colors.white54),),
                SizedBox(height: 20,),
                Text('Do you want to post an ad?',style: TextStyle(color: Colors.white54,fontSize: 14))

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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                },
                child: Container(
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
                ),
              )
            ],
          ),
        )
    );

    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text('Post Ad'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.clear,color: Colors.white54,)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              DottedBorder(
              color: Colors.red,
              strokeWidth: 1,
              radius: Radius.circular(12),
              child: Container(
                height: 120,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25,),
                    Icon(Icons.picture_as_pdf,color: Colors.red,),
                    SizedBox(height: 5,),
                    Text('Upload Cover Photo',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),
                SizedBox(height: 15,),
                Text('Item Information',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 10,),
                Text('Item Name',style: TextStyle(color: Colors.white)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: OutlineInputBorder(
                      ),
                      hintText: 'Ex.',
                      hintStyle: TextStyle(color: Colors.white54)
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Price',style: TextStyle(color: Colors.white)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Ex.',
                        hintStyle: TextStyle(color: Colors.white54)
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Current Location',style: TextStyle(color: Colors.white)),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Ex.',
                        hintStyle: TextStyle(color: Colors.white54)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Other Details',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 15,),
                Text('Platform',style: TextStyle(fontSize: 15,color: Colors.white),),
                SizedBox(height: 5,),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  // width: 330,
                  child: DropdownButton<String>(
                    value: _selectedtype,
                    onChanged: (value) {
                      setState(() {
                        _selectedtype = value;
                      });
                      debugPrint("You selected $_selectedtype");
                    },
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Choose Platform',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Hide the default underline
                    underline: Container(),
                    // set the color of the dropdown menu
                    dropdownColor: Colors.white,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                      ),
                    ),
                    isExpanded: true,

                    // The list of options
                    items: _type
                        .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ))
                        .toList(),

                    // Customize the selected item
                    selectedItemBuilder: (BuildContext context) => _type
                        .map((e) =>
                        Center(
                          child: Text(
                            e,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                    )
                        .toList(),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Categories',style: TextStyle(fontSize: 15,color: Colors.white),),
                SizedBox(height: 5,),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  // width: 330,
                  child: DropdownButton<String>(
                    value: _selectedTime,
                    onChanged: (value) {
                      setState(() {
                        _selectedTime = value;
                      });
                      debugPrint("You selected $_selectedTime");
                    },
                    hint: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Choose Category',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    // Hide the default underline
                    underline: Container(),
                    // set the color of the dropdown menu
                    dropdownColor: Colors.white,
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Colors.white,
                      ),
                    ),
                    isExpanded: true,

                    // The list of options
                    items: _time
                        .map((e) => DropdownMenuItem(
                      value: e,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ))
                        .toList(),

                    // Customize the selected item
                    selectedItemBuilder: (BuildContext context) => _time
                        .map((e) =>
                        Center(
                          child: Text(
                            e,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                    )
                        .toList(),
                  ),
                ),
                SizedBox(height: 15,),
                Text('About',style: TextStyle(fontSize: 20,color: Colors.white)),
                SizedBox(height: 5,),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    minLines: 10,
                    maxLines: 20,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                        ),
                        hintText: 'ex.',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                DottedBorder(
                  color: Colors.red,
                  strokeWidth: 1,
                  radius: Radius.circular(12),
                  child: Container(
                    height: 120,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 25,),
                        Icon(Icons.picture_as_pdf,color: Colors.red,),
                        SizedBox(height: 5,),
                        Text('Upload Photos',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.info,color: Colors.red,),
                    SizedBox(width: 5,),
                    Text('Only you can add up to 8 photos',style: TextStyle(color: Colors.white54),)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/pd.png',height: 80,width: 80,),
                    Image.asset('assets/pd1.png',height: 80,width: 80),
                    Image.asset('assets/pd2.png',height: 80,width: 80),
                    Image.asset('assets/pd3.png',height: 80,width: 80),

                  ],
                ),
                Row(
                  children: [
                    Container(
                        child: Checkbox(
                          side: MaterialStateBorderSide.resolveWith(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return const BorderSide(color: Colors.red);
                              }
                              return const BorderSide(color: Colors.red);
                            },
                          ),
                          activeColor: Colors.red,
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        )
                    ),
                    Text('I agree with ',style: TextStyle(color: Colors.white,fontSize: 16),),
                    Text('Terms and Politics',style: TextStyle(color: Colors.red,fontSize: 16))
                  ],
                ),

                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red)
                  ),
                  child: Row(
                    children: [
                      Container(
                          child: Checkbox(
                            side: MaterialStateBorderSide.resolveWith(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return const BorderSide(color: Colors.red);
                                }
                                return const BorderSide(color: Colors.red);
                              },
                            ),
                            activeColor: Colors.red,
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          )
                      ),
                      Text('Hand to hand Delivery ',style: TextStyle(color: Colors.white,fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: Row(
                    children: [
                      Container(
                          child: Checkbox(
                            side: MaterialStateBorderSide.resolveWith(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return const BorderSide(color: Colors.red);
                                }
                                return const BorderSide(color: Colors.red);
                              },
                            ),
                            activeColor: Colors.red,
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          )
                      ),
                      Text('Send with Shipping company ',style: TextStyle(color: Colors.white54,fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red)
                      ),
                      child: Center(child: Text('Save',style: TextStyle(color: Colors.white54),)),
                    ),
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
                        child: Text('Post',style: TextStyle(color: Colors.white),),
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(const Size(150, 50)),
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )
                            )
                        ),
                      )
                      ),
                    )
                  ],
                )





              ],
          ),
          ),
        ),
      ),
    ));
  }
}
