import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/ic_header.jpg")
                )
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

                    SizedBox(height: 30,),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search fo hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),

            //#body
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800, fontSize: 20),),

                  SizedBox(height: 30,),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _makeItem( "assets/images/ic_hotel1.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel2.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel3.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel4.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel5.jpg", "Hotel1"),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800, fontSize: 20),),

                  SizedBox(height: 30,),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _makeItem( "assets/images/ic_hotel1.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel2.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel3.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel4.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel5.jpg", "Hotel1"),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),

                  Text("Resort Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade800, fontSize: 20),),

                  SizedBox(height: 30,),

                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _makeItem( "assets/images/ic_hotel1.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel2.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel3.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel4.jpg", "Hotel1"),
                        _makeItem( "assets/images/ic_hotel5.jpg", "Hotel1"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _makeItem(String image, String title) {
    return AspectRatio(
      aspectRatio: 1/0.8,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                Expanded(child: Container(height: 10,)),
                Icon(Icons.favorite, color: Colors.red,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


