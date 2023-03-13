import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:notess/model/collegeClass.dart';
import 'package:notess/model/college_items.dart';

class homePage extends StatefulWidget {
   homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final _listclass=collegeClass.tolist();
  List<collegeClass> _foundlist=[];
  @override
  void initState() {
    _foundlist=_listclass;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        actions: [
          Container(
            width: 410,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: AnimatedTextKit(animatedTexts: [
              TyperAnimatedText("Developers are adding more notes!!.Please be patient...",
              textStyle: TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 15
              ),
              ),
            ],
              totalRepeatCount: 1,
            ),
            ),
          )
        ],
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image:AssetImage('assets/chachachodrhi_books_stacked_on_top_of_eachother_animated_style_476113b2-eeb2-4652-9ea6-3d8f531b45a6.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(0.4),
                            Colors.black.withOpacity(0.01),
                          ]
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AnimatedTextKit(animatedTexts:[
                            TyperAnimatedText("List of Colleges",
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: Duration(milliseconds: 100)
                            ),
                          ],
                            totalRepeatCount: 1,
                          ),

                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: TextField(
                              onChanged: (value)=>_runfilter(value),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(0),
                                prefixIcon: Icon(Icons.search,color:Colors.black,size:15),
                                prefixIconConstraints: BoxConstraints(maxHeight: 30,minWidth: 45),
                                border: InputBorder.none,
                                hintText: 'Search here',
                                hintStyle: TextStyle(color:Colors.grey[800],fontWeight: FontWeight.bold)
                              ),
                            ),
                          ),
                          ),
                          SizedBox(height: 40,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(20),
                      crossAxisSpacing: 35,
                      mainAxisSpacing: 35,
                      children:[
                        for(collegeClass collegeclass in _foundlist)
                          college_items(collegeclass: collegeclass),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
  void _runfilter(String enteredKeyword){
    List<collegeClass> results=[];
    if(enteredKeyword.isEmpty){
      results=_listclass;
    }else{
      results=_listclass.where((item)=>item.names!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }
    setState(() {
      _foundlist=results;
    });
  }

}
