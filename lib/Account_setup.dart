import 'package:flutter/material.dart';
import 'package:user_g/Appcolor.dart';
class Account_setup extends StatefulWidget {
  const Account_setup({Key? key}) : super(key: key);

  @override
  State<Account_setup> createState() => _Account_setupState();
}

class _Account_setupState extends State<Account_setup> {

  final List<String> _time = ['A','B','C','D','E'];

  // the selected value
  String? _selectedTime;

  final List<String> _type = ['Saving Account','Current Account'];

  // the selected value
  String? _selectedtype;



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title: Text('Account setup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      Center(child: Image.asset('assets/bank.png')),
                Text('Select bank',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 15,),
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
                        'eg. GTCO Bank',
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
          Text('Account holder name',style: TextStyle(fontSize: 20,color: Colors.white)),
                SizedBox(height: 15,),
          Container(
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white54)
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(),
                hintText: 'John doe',
                hintStyle: TextStyle(color: Colors.white)
              ),
            ),
          ),
                SizedBox(height: 15,),
                Text('Account number',style: TextStyle(fontSize: 20,color: Colors.white)),
                SizedBox(height: 15,),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white54)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        border: OutlineInputBorder(),
                        hintText: '0000000000',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text('Account type',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 15,),
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
                        'Saving Account',
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
                SizedBox(height: 45,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue
                  ),
                  child: Center(child: Text('Add Bank',style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
