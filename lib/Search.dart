import 'package:flutter/material.dart';
import 'package:user_g/Action_Category.dart';
import 'package:user_g/Appcolor.dart';
import 'package:user_g/Home.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Appcolor.PrimaryColor,
      appBar: AppBar(
        backgroundColor: Appcolor.PrimaryColor,
        title:  Text('Search'),
        titleSpacing: 100,
      ),
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
                Text('Platforms',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 15,),
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Appcolor.PrimaryColor1,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                               Image.asset(imagename[index]),
                            SizedBox(height: 10,),
                            Text(arrname[index],style: TextStyle(color: Colors.white),)
                          ],
                      ),
                      );
                    }),
                SizedBox(height: 20,),
                Divider(thickness: 1,color: Colors.white54,),
                SizedBox(height: 20,),
                Text('Category',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(height: 20,),
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: (){
                          setState((){
                            if(arr1name[index].toString()=="Action"){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Action_Category(),));
                            }
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Appcolor.PrimaryColor1,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Image.asset(image1name[index]),
                              SizedBox(height: 10,),
                              Text(arr1name[index],style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

 var imagename = ['assets/ho.png','assets/ho1.png','assets/ho2.png','assets/ho3.png'];

 var arrname = ['Playstation','Playstation','PC- Laptop','Nintendo'];

 var image1name = ['assets/cat.png','assets/cat1.png','assets/cat2.png','assets/cat3.png','assets/cat4.png',
   'assets/cat5.png','assets/cat6.png','assets/cat7.png','assets/cat8.png','assets/cat9.png'];

 var arr1name = ['Action','Sports','Shooter','Strategy','Battle Royale','Playstation','Adventure','Survival','Cards','Playstation'];
