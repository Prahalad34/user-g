import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Forrget_Password.dart';
import 'package:user_g/Home.dart';
class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  bool _isChecked = false;

  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }

  final _formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_sharp,color: Colors.white,),
                  SizedBox(height: 25,),
                  Center(child: Image.asset('assets/sp.png',height: 150,width: 150,)),
                  SizedBox(height: 25,),
                  Text('Login',style: TextStyle(color: Colors.red,fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        //border: Border.all(color: Colors.white54)
                    ),
                    child:  TextFormField(
                      controller:phoneController ,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10), // Restrict input to 10 characters
                        FilteringTextInputFormatter.digitsOnly, // Allow only digits
                      ],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Enter the number',
                        hintStyle: TextStyle(color: Colors.white54),
                        errorText: _validate ? "Enter a valid 10-digit number" : null,
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty || value.length != 10) {
                          return 'Enter a valid 10-digit number';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                       // border: Border.all(color: Colors.white54)
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          hintText: 'Password',
                        //  hintStyle: TextStyle(color: Colors.white54),
                        suffixIcon: IconButton(

                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                        ),
                        alignLabelWithHint: false,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
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
                      Expanded(child: Text('Remember me ',style: TextStyle(color: Colors.white,fontSize: 16),)),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Forrget_Password(),));
                          },
                          child: Text('Forgot the password?',style: TextStyle(color: Colors.red,fontSize: 16)))
                    ],
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
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
                          ),
                          borderRadius: BorderRadius.circular(8),
                         // color: Colors.red
                      ),
                      child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
                    ),
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
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have an Account?',style: TextStyle(color: Colors.white,fontSize: 16),),
                      Text(' Create Account',style: TextStyle(color: Colors.red,fontSize: 16))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
