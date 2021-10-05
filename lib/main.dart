import 'package:flutter/material.dart';

import 'food_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController (vsync: this ,length: 3);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView(
        children: [
          Stack(
            children: [
              Container(height: 300.0),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/counter.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                top: 150.0,
                left: 25.0,
                child: Container(
                  height: 140.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70.0),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2.0
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
              Positioned(
                top: 215,
                left: 180.0,
                child : Row(
                  children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Elisabeth',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Text(
                        '1,947',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 13.0,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(width: 3.0,),
                      Text('Follower',
                        style: TextStyle(
                            fontFamily: 'Monserrat',
                            fontSize: 13.0,
                            color: Colors.grey
                        ),)

                    ],
                  )
                ],

              ),
                    SizedBox(width: 25.0),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 30.0,
                        width: 80.0,

                        decoration: BoxDecoration(
                            color: Color(0xFFEAF4EF),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5A9776)
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              )

              ),


            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.0,top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Color(0xFF469469),
              labelColor: Colors.black,
              indicatorWeight: 4,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable :true,
              tabs: [
                Tab(
                  child: Text(
                    'Recipes',
                    style: TextStyle(
                      fontFamily: 'Qiucksand',

                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Story',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],

            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height -325.0,
            child: TabBarView(
              controller: tabController,
              children: [
                new FoodItem(),
                new FoodItem(),
                new FoodItem(),

              ],
            ),
          )
        ],

      )
    );
  }
}
