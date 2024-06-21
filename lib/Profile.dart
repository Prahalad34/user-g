import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Personal_information.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int isActive = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text('Profile',style: TextStyle(color: Colors.white),),
        ),
        leading: Icon(Icons.menu,color: Colors.white,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                   Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           height: 88,
                           width: 88,
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.red,width: 2),
                             shape: BoxShape.circle
                           ),
                           child: Image.asset('assets/avtar.png'),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 2,top: 40),
                           child: Icon(Icons.create_outlined,color: Colors.red,),
                         )
                       ],
                     ),

                   ),
                Center(child: Text('Sara.cruz',style: TextStyle(fontSize: 16,color: Colors.red),)),
                Center(child: Text('sara.cruz@example.com',style: TextStyle(fontSize: 10,color: Colors.white))),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(child: Text('Personal informtion',style: TextStyle(fontSize: 18,color: Colors.white))),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Personal_information(),));
                      },
                        child: Icon(Icons.create,color: Colors.red,size: 18,)),
                    SizedBox(width: 5,),
                    Text('Edit',style: TextStyle(fontSize: 16,color: Colors.red))
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: 142,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.PrimaryColor1
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.account_circle_rounded,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('Jenny Wilson',style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.email,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('sara.cruz@example.com',style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.phone,color: Colors.white,),
                            SizedBox(width: 10,),
                            Text('+966-504218617',style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
               
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState((){
                      isActive = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.red)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15,),
                          Text('+',style: TextStyle(fontSize: 35,color: Colors.red),),
                        SizedBox(width: 10,),
                        Text('Add Address',style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
                isActive == 0?
                    AddAddress(): isActive==1?
                    Addpost():
                AddAddress(),
                SizedBox(height: 20,),
                Text('Privacy setting',style: TextStyle(fontSize: 20,color: Colors.white),
                textAlign: TextAlign.start,),
                SizedBox(height: 25,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Appcolor.PrimaryColor1
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      hintText: '**********',
                      hintStyle: TextStyle(
                        color: Colors.white
                      ),
                      prefixIcon: Icon(Icons.lock,color: Colors.white,),
                      suffixText: 'Change password',
                      suffixStyle: TextStyle(color: Colors.red)
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Center(child: Text('Avatars',style: TextStyle(color: Colors.white),)),
                SizedBox(height: 5,),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      gradient:LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.redAccent,
                          Colors.orangeAccent,
                          Colors.red
                          //add more colors for gradient
                        ],
                        begin: Alignment.bottomRight, //begin of the gradient color
                        end: Alignment.bottomRight, //end of the gradient color
                        stops: [0, 0.2, 0.5, 0.8]
                      ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                         Image.asset('assets/p.png',height: 80,width: 80,),
                         Image.asset('assets/p1.png',height: 80,width: 80,),
                         Image.asset('assets/p2.png',height: 80,width: 80,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
  Widget Addpost() => Column(
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.red)
        ),
        child: Row(
          children: [
            SizedBox(width: 15,),
            Text('+',style: TextStyle(fontSize: 35,color: Colors.red),),
            SizedBox(width: 10,),
            Text('Add Address',style: TextStyle(fontSize: 20,color: Colors.white),),
          ],
        ),
      ),
    ],
  );

  Widget AddAddress()=>Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
            child:Text('Address',style: TextStyle(color: Colors.white,fontSize: 20),)),
            Icon(Icons.create_outlined,color: Colors.red,),
            Text('Edit',style: TextStyle(color: Colors.red),)
          ],
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Appcolor.PrimaryColor1
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('Region :',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('Riyadh',style: TextStyle(color: Colors.white54))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_city,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('city :',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('Riyadh',style: TextStyle(color: Colors.white54))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_searching,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('district :',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('King Abdulaziz Branch Road',style: TextStyle(color: Colors.white54))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_pin,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('Street',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('King Abdulaziz Branch Road',style: TextStyle(color: Colors.white54))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.house,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('build number',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('13',style: TextStyle(color: Colors.white54))
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.local_post_office_rounded,color: Colors.white,),
                    SizedBox(width: 6,),
                    Text('Postal code :',style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(width: 6,),
                    Text('11333',style: TextStyle(color: Colors.white54))
                  ],
                ),
              ],
            ),
          ),
        )
      ],),
  );
}
