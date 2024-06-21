import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:user_g/About_us.dart';
import 'package:user_g/Ads.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Confirm_Address.dart';
import 'package:user_g/Contact_us.dart';
import 'package:user_g/Login.dart';
import 'package:user_g/Message.dart';
import 'package:user_g/My_cart.dart';
import 'package:user_g/My_favorites.dart';
import 'package:user_g/My_orders.dart';
import 'package:user_g/My_wallet.dart';
import 'package:user_g/Order.dart';
import 'package:user_g/Post_Ad.dart';
import 'package:user_g/Profile.dart';
import 'package:user_g/Search.dart';
import 'package:user_g/Terms_Conditions.dart';
import 'package:user_g/Notification.dart';
import 'package:user_g/notifi.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool _HomescreenSelected = false;
  bool _MyorderSelected = false;
  bool _MyfavoriteSelected = false;
  bool _ChatSelected = false;
  bool _MycartSelected = false;
  bool _MyadsSelected = false;

 int isValue = 0;

  bool isPressed=false;

  String dropdownvalue = 'English';

  var items = [
    'English',
    'Arabic',
    'Hindi',
  ];

  int selectedIndex = 0;

  int selectedIndex1 = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
        key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text(''),
        actions: [
             IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => notifi(),));
                    },
                    child: Icon(Icons.notifications,size: 30,)),
              ),
              onPressed: () {
              },
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/Image.png'),
              ),
            ),
          ),
          DropdownButton(
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items,style: TextStyle(color: Colors.black),),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),

        ],
      ),
      drawer: Drawer(
        backgroundColor: Appcolor.PrimaryColor,
        // Drawer contents go here
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image.asset('assets/Ellipse 4.png'),
                SizedBox(height: 8,),
                Text('Omar Noaman',style: TextStyle(fontSize: 15,color: Colors.white),),
                Text('Omar.Noaman@Lobb.sa',style: TextStyle(fontSize: 15,color: Colors.white),),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    setState(() {
                      isValue = 0;
                    });
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: isValue==0 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.home,color: Colors.white,size: 25,),
                        SizedBox(width: 20,),
                        Text('Home Screen',style: TextStyle(color: Colors.white,fontSize: 16),),

                      ],
                      ),
                    ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                          setState(() {
                            isValue = 1;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_orders(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color:isValue == 1 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 25,),
                        SizedBox(width: 20,),
                        Text('My orders',style: TextStyle(color: Colors.white,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState(() {
                      isValue = 2;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_favorites(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(7),
                        color: isValue == 2 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.favorite,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('My favorites',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState(() {
                      isValue = 3;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Message(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue ==3 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.chat,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Chat',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState(() {
                      isValue = 4;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_cart(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue == 4 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.shopping_cart,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('My Cart',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 5;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Order(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue == 5 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.volcano,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('My Ads',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 6;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => My_wallet(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue == 6 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.wallet,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('My Wallet',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                Divider(height: 60,thickness: 2,color: Colors.white54,),
                SizedBox(),
                InkWell(
                  onTap: (){
                    setState((){
                        isValue = 7;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => About_us(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==7 ? Colors.red : Colors.black
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.info,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('About Us',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 8;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Contact_us(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==8 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.phone_forwarded,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Contact Us',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 9;
                    });
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Contact_us(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==9 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.help_outlined,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Help',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 10;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Terms_Conditions(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==10 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.terminal_sharp,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Terms & Condition ',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 11;
                    });
                  //
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => Terms_Conditions(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==11 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.house_siding,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Become a trader',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 12;
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==12 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.account_circle_rounded,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        Text('Profile ',style: TextStyle(color: Colors.white54,fontSize: 16),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: (){
                    setState((){
                      isValue = 13;
                    });
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: isValue==13 ? Colors.red : Colors.black
                    ),
                    child: Row(

                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.logout,color: Colors.white54,size: 25,),
                        SizedBox(width: 20,),
                        TextButton(
                          child: Text('Log Out',style: TextStyle(color: Colors.white54,fontSize: 16)),
                          onPressed: () {
                            showAlertDialog(context);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  )
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
      // Other body contents go here
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       color: Appcolor.PrimaryColor1
                     ),
                     child: TextField(
                       decoration: InputDecoration(
                         contentPadding: EdgeInsets.all(12),
                         border: OutlineInputBorder(),
                         hintText: 'Search',
                         hintStyle: TextStyle(color: Colors.white),
                         prefixIcon: Icon(Icons.search,color: Colors.white,)
                       ),
                     ),
                   ),
                 SizedBox(height: 15,),
            ImageSlideshow(
              width: double.infinity,
              height: 200,
              initialPage: 0,
              indicatorColor: Colors.red,
              indicatorBackgroundColor: Colors.grey,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                      'assets/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/home.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],

              onPageChanged: (value) {
                print('Page changed: $value');
              },

              autoPlayInterval: 3000,

              isLoop: true,
            ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Post_Ad(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        colors: [
                          Appcolor.PrimaryColor6,
                          Appcolor.PrimaryColor7
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('+',style: TextStyle(color: Colors.white,fontSize: 25),),
                        SizedBox(width: 15,),
                        Text('Post Ad',style: TextStyle(color: Colors.white,fontSize: 20))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Platforms',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Appcolor.PrimaryColor1
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 10,),
                              Text('Playstation',style: TextStyle(color: Colors.white),),
                              Image.asset('assets/ho.png'),

                            ],
                          ),
                        ),
                    Container(
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor1
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Text('Playstation',style: TextStyle(color: Colors.white),),
                          Image.asset('assets/ho.png'),

                        ],
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(fontSize: 20,color: Colors.white)),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
                        },
                        child: Text('See all',style: TextStyle(fontSize: 20,color: Colors.red)))
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor1
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Text('Playstation',style: TextStyle(color: Colors.white),),
                          Image.asset('assets/by.png'),

                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor1
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10,),
                          Text('Playstation',style: TextStyle(color: Colors.white),),
                          Image.asset('assets/by1.png'),

                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ads',style: TextStyle(fontSize: 20,color: Colors.white)),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Ads(),));
                      },
                        child: Text('See all',style: TextStyle(fontSize: 20,color: Colors.red)))
                  ],
                ),
                SizedBox(height: 15,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.PrimaryColor1
                      ),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(imagename[index]),
                              //Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(arrname[index],style: TextStyle(color: Colors.white,fontSize: 20),),
                                      SizedBox(width: 10,),

                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Games store',style: TextStyle(color: Appcolor.PrimaryColor2 ,decoration: TextDecoration.underline),),
                                      SizedBox(width: 5,),
                                      Icon(Icons.storefront,color: Colors.white24,)
                                    ],
                                  ),
                                  Text('PS4 - PS5',style: TextStyle(color: Colors.white24),),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,),
                                      Text('4.6',style: TextStyle(color: Colors.yellow),),
                                      SizedBox(width: 65,),
                                      Text('\$55',style: TextStyle(color: Colors.red),),
                                      SizedBox(width: 5,),
                                      Text('tax Incl.',style: TextStyle(color: Colors.white54),)
                                    ],
                                  )
                                ],
                              ),
                              InkWell(
                                onTap: (){
                                  setState((){
                                    selectedIndex = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 60,),
                                  child: Icon(Icons.favorite,color:( selectedIndex == index)? Colors.red : Colors.white54),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),

                    );
                  },)


              ],
            ),
          ),
        ),
      )
    )
    );
  }
}
var imagename = ['assets/mf.png','assets/mf1.png','assets/mf2.png','assets/mf3.png','assets/mf4.png'];

var arrname = ['FIFA 2022','Grand theft auto','Shadow of war','FIFA 2022','FIFA 2022'];


showAlertDialog(BuildContext context) {

  Widget okButton = TextButton(
    child: Row(
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(child: Text('Not now',style: TextStyle(color: Colors.white),)),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
          },
          child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              color: Colors.red
            ),
            child: Center(child: Text('Logout',style: TextStyle(color: Colors.white),)),
          ),
        )
      ],
    ),
    onPressed: () {
   //   Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
    },
  );

  AlertDialog alert = AlertDialog(
    backgroundColor: Appcolor.PrimaryColor,
    title: Column(
      children: [
        Image.asset('assets/Logout.png'),
        Text('Logout?',style: TextStyle(color: Colors.white),)
      ],
    ),
    content: Text("Are you sure you want to Logout?",style: TextStyle(color: Colors.white)),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
