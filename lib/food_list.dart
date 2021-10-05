import 'package:flutter/material.dart';

class FoodItem extends StatefulWidget {

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: [
      Padding(
          padding: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended',
              style: TextStyle(
                fontFamily: 'Quciksand',
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                fontFamily: 'Quicksand',
                color: Colors.black
              ),
            )
          ],

        ),
      ),
     Container(
       height: 250.0,
       child: ListView(
         scrollDirection: Axis.horizontal,
         children: [
           foodList('assets/food1.jpg','Granola with fruits'),
           foodList('assets/food2.jpg','Bread with avocado'),


         ],
       ),
     )
    ]
    );
  }

  Widget foodList(String imgPath,String foodName){
    return Padding(
      padding: EdgeInsets.only(left: 25.0,top: 25.0,bottom: 10.0),
      child: Container(
        height: 175.0,
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0
            ),
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 125.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover
                      ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)
                    )
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 4.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Center(
                        child: Icon(Icons.favorite,color: Colors.white,),
                      ),
                    ),
                  ),
                ),

              ],
            ),


            SizedBox(height: 10.0),
            Padding(padding: EdgeInsets.only(left: 15.0),
              child:  Text(
                foodName,
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),


            ),

            SizedBox(height: 10.0),
            Padding(padding: EdgeInsets.only(left: 15.0),
            child : Row(
              children: [
                Text(
                  'Bread fast',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Light food',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                ),

              ],
        )
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  Icon(Icons.star_border,color: Colors.grey,size: 14.0,),
                  SizedBox(width: 5.0,),
                  Text('4.5',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
