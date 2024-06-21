import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class New_Password extends StatefulWidget {
  const New_Password({Key? key}) : super(key: key);

  @override
  State<New_Password> createState() => _New_PasswordState();
}

class _New_PasswordState extends State<New_Password> {

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
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('New Password',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25,),
              Center(child: Image.asset('assets/veri.png')),
              SizedBox(height: 15,),
              Text('The new password must be different from the old one in order for the account to be more secure',style: TextStyle(color: Colors.white,fontSize: 15),),
              SizedBox(height: 15,),
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
                    hintStyle: TextStyle(color: Colors.white54),
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
                    hintStyle: TextStyle(color: Colors.white54),
                    suffixIcon: IconButton(
                      icon: Icon(confirmpasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,color: Colors.white54),
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

              SizedBox(height: 100,),
              InkWell(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => New_Password(),));
                // },
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

            ],
          ),
        ),
      ),
    ));
  }
}
