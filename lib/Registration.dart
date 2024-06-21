import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_g/Appcolor.dart';
class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool passwordVisible=false;

  bool confirmpasswordVisible=false;

  bool _isChecked = false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
    confirmpasswordVisible=true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolor.PrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Icon(Icons.arrow_back_sharp,color: Colors.white,),
                  SizedBox(height: 25,),
                  Center(child: Image.asset('assets/sp.png',height: 150,width: 150,)),
                  SizedBox(height: 25,),
                  Text('Registration',style: TextStyle(color: Colors.red,fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Full Name*',
                        hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                          ),
                          hintText: 'Phone Number*',
                          hintStyle: TextStyle(color: Colors.white)
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                          ),
                          hintText: 'City (Optional)',
                          hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                          ),
                          hintText: 'Email Address (Optional)',
                          hintStyle: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      obscureText: passwordVisible,
                      //controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                      //  helperText:"Password must contain special character",
                        helperStyle:TextStyle(color:Colors.deepOrangeAccent),
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,color: Colors.white54),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                  ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      obscureText: confirmpasswordVisible,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                          ),
                          hintText: 'Confirm Password*',
                          hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: Icon(confirmpasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,color: Colors.white54,),
                          onPressed: () {
                            setState(
                                  () {
                                    confirmpasswordVisible = !confirmpasswordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                        filled: true,
                      ),
                    ),
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
                    child: Center(child: Text('Register',style: TextStyle(color: Colors.white),)),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Image.asset('assets/line.png',),
                      SizedBox(width: 12,),
                      Expanded(child: Text('or continue with',style: TextStyle(color: Colors.white54,fontSize: 10),)),
                      SizedBox(width: 12,),
                      Image.asset('assets/line.png',),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Appcolor.PrimaryColor1
                    ),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/go.png'),
                        SizedBox(width: 8,),
                        Text('Sign in with Google',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    )),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Appcolor.PrimaryColor1
                    ),
                    child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.apple,size: 25,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Sign in with Apple',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
