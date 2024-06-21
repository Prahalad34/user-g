import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Login1.dart';
import 'package:user_g/Registration.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 35,),
                Center(child: Image.asset('assets/sp.png')),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome Back: ',style: TextStyle(color: Colors.red),),
                    Text('Access Your Gaming Haven',style: TextStyle(color: Colors.white))
                  ],
                ),
                SizedBox(height: 45,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login1(),));
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
                    child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
                  ),
                ),
                SizedBox(height: 45,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Registration(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                       border: Border.all(color: Colors.redAccent)
                    ),
                    child: Center(child: Text('Register',style: TextStyle(color: Colors.redAccent),)),
                  ),
                )
               
              ],
            ),
          ),
    );
  }
}
