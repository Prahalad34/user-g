import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Success.dart';
class Confirm_Address extends StatefulWidget {
  const Confirm_Address({Key? key}) : super(key: key);

  @override
  State<Confirm_Address> createState() => _Confirm_AddressState();
}

class _Confirm_AddressState extends State<Confirm_Address> {

  bool _isChecked = false;
  int _itemCount = 0;

  int _activeStepIndex = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();

  List<Step> stepList() => [
    Step(
      state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 0,
      title: const Text('Address',style: TextStyle(fontSize: 14),),
      content: Container(
        height: 410,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.red),
        ),
        child: Padding( 
          padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.red,),
                SizedBox(height: 5,),
                Expanded(child: Text('Home',style: TextStyle(color: Colors.red),)),
                Icon(Icons.create,color: Colors.blue,),
                SizedBox(height: 5,),
                Text('Edit',style: TextStyle(color: Colors.blue)),
                SizedBox(height: 5,),
                Icon(Icons.task_alt,color: Colors.red)
              ],
            ),
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
          ],
        ),
      ),
      ),
    ),
    Step(
        state:
        _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeStepIndex >= 1,
        title: const Text('Order Summary',style: TextStyle(fontSize: 13),),
        content: Column(
          children: [
            Container(
              height: 410,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Appcolor.PrimaryColor1
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.red,),
                        SizedBox(height: 5,),
                        Expanded(child: Text('Home',style: TextStyle(color: Colors.red),)),
                        Text('Change',style: TextStyle(color: Colors.blue)),
                      ],
                    ),
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
                  ],
                ),
              ),
            ),
        SizedBox(height: 20,),
        Container(
          height: 315,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Appcolor.PrimaryColor1
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order Review',style: TextStyle(color: Colors.white,fontSize: 20),),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.arrow_drop_up_rounded,color: Colors.white54,),
                    )
                  ],
                ),
                Text('2 items in card',style: TextStyle(color: Colors.white)),
                Divider(thickness: 1,color: Colors.white10,),
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
                                         SizedBox(width: 7,),
                                        Column(
                                          children: [
                                            Text('\$245,78',style: TextStyle(color: Colors.white54,decoration: TextDecoration.lineThrough),),
                                            SizedBox(height: 5,),
                                            Text('\$245,78',style: TextStyle(color: Colors.red),)
                                          ],
                                        )


                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },),
              ],
            ),
          ),
        ),
            SizedBox(height: 20,),
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolor.PrimaryColor1
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Discount Codes',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Text('Enter your coupon code',style: TextStyle(color: Colors.white54)),
                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(),
                          hintText: 'XRTMAS70',
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.check_circle,color: Colors.green,)
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 475,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolor.PrimaryColor1
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Billing Summary',style: TextStyle(fontSize: 20,color: Colors.white),),
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.arrow_drop_up_rounded),
                        ),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal\n Discount\n Shipping\n Tax',style: TextStyle(color: Colors.white54),),
                        Text('\$200\n -\$63\n \$0.00\n \$20',style: TextStyle(color: Colors.white54))
                      ],
                    ),
                    Divider(thickness: 2,color: Colors.white54,height: 60,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total ',style: TextStyle(color: Colors.white,fontSize: 25),),
                        Text('\$173',style: TextStyle(color: Colors.white,fontSize: 25))
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
                        Text('Please check to acknowledge our ',style: TextStyle(color: Colors.white,fontSize: 9),),
                        Text('Privacy & Terms Policy',style: TextStyle(color: Colors.red,fontSize: 9))
                      ],
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Success(),));
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
                        child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/ca.png'),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('User G',style: TextStyle(color: Colors.red),),
                            Text('Security Checkout',style: TextStyle(color: Colors.white),)
                          ],
                        )

                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        )
    ),
    Step(
        state: StepState.complete,
        isActive: _activeStepIndex >= 2,
        title: const Text('Payment',style: TextStyle(fontSize: 14),),
        content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 475,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Payment Method',style: TextStyle(fontSize: 20,color: Colors.white),),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: Icon(Icons.arrow_drop_up_rounded),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Text('Card number',style: TextStyle(fontSize: 20,color: Colors.white54)),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(),
                            hintText: '1234 5678 9101 3456',
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(Icons.check_circle,color: Colors.green,)
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Zip/Postal Code',style: TextStyle(fontSize: 20,color: Colors.white54)),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(12),
                              border: OutlineInputBorder(),
                              hintText: 'MM/YY',
                              hintStyle: TextStyle(color: Colors.white),

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Card Security Code',style: TextStyle(fontSize: 20,color: Colors.white54)),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(12),
                            border: OutlineInputBorder(),
                            hintText: '***',
                            hintStyle: TextStyle(color: Colors.white),

                          ),
                          keyboardType: TextInputType.numberWithOptions(),
                        ),
                        SizedBox(height: 10,),
                        Text('What is this?',style: TextStyle(color: Colors.blue),),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                    shape: BoxShape.circle
                                  ),
                              child:  Icon(Icons.lock,color: Colors.red,),
                            ),
                            SizedBox(width: 5,),
                            Text("We protect your payment information using encryption to\n provide bank-level security.",style: TextStyle(color: Colors.white,fontSize: 9),)


                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 475,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Billing Summary',style: TextStyle(fontSize: 20,color: Colors.white),),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: Icon(Icons.arrow_drop_up_rounded),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subtotal\n Discount\n Shipping\n Tax',style: TextStyle(color: Colors.white54),),
                            Text('\$200\n -\$63\n \$0.00\n \$20',style: TextStyle(color: Colors.white54))
                          ],
                        ),
                        Divider(thickness: 2,color: Colors.white54,height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total ',style: TextStyle(color: Colors.white,fontSize: 25),),
                            Text('\$173',style: TextStyle(color: Colors.white,fontSize: 25))
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
                            Text('Please check to acknowledge our ',style: TextStyle(color: Colors.white,fontSize: 9),),
                            Text('Privacy & Terms Policy',style: TextStyle(color: Colors.red,fontSize: 9))
                          ],
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Success(),));
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
                            child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                          ),
                        ),
                       SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/ca.png'),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('User G',style: TextStyle(color: Colors.red),),
                                Text('Security Checkout',style: TextStyle(color: Colors.white),)
                              ],
                            )

                          ],
                        )

                      ],
                    ),
                  ),
                )
              ],
            )))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
     backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Confirm Address'),
        titleSpacing: 60,
      ),
      body:  Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: Colors.red)
        ),
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: _activeStepIndex,
          steps: stepList(),
          onStepContinue: () {
            if (_activeStepIndex < (stepList().length - 1)) {
              setState(() {
                _activeStepIndex += 1;
              });
            } else {
              print('Submited');
            }
          },
          onStepCancel: () {
            if (_activeStepIndex == 0) {
              return;
            }

            setState(() {
              _activeStepIndex -= 1;
            });
          },
          onStepTapped: (int index) {
            setState(() {
              _activeStepIndex = index;
            });
          },
        ),
      ),
    ));
  }
}

var imagename = ['assets/os.png','assets/os1.png'];
var arrname = ['COD4 - Call of Duty 4 - Ps5','FH5 - Forza Horizon 5   '];

