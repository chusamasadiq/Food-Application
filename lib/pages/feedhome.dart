import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurants/pages/home.dart';
import 'package:restaurants/pages/menu.dart';
import 'package:restaurants/pages/mostpopular.dart';

class FeedHome extends StatefulWidget {
  const FeedHome({Key? key}) : super(key: key);

  @override
  State<FeedHome> createState() => _FeedHomeState();
}

class _FeedHomeState extends State<FeedHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(25),
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good Evening Usama!',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Usama.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Find Our Location',
                              style: TextStyle(
                                  // fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 10),
                          Text('Store Location',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: TextFormField(
                        // controller: searchController,
                        decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.search, color: Colors.grey[500]),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: 'Search Food',
                            border: InputBorder.none),
                      )),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Most Popular',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 170,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        MostPopular(
                            image: ('assets/images/image3.jpg'),
                            title: 'Biryani'),
                        MostPopular(
                            image: ('assets/images/image5.jpg'),
                            title: 'Kabab'),
                        MostPopular(
                            image: ('assets/images/image6.jpg'),
                            title: 'Chicken Karahi'),
                        MostPopular(
                            image: ('assets/images/image4.jpg'),
                            title: 'Hot Wings'),
                        MostPopular(
                            image: ('assets/images/burger.jpg'),
                            title: 'Special Deal'),
                      ])),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Menu',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TextButton(onPressed: () {}, child: Text('View all'))
                    ],
                  ),
                  Expanded(
                      child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/28.jpg'))),
                        height: 220,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/33.jpg'))),
                        height: 220,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/13.jpg'))),
                        height: 220,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.white),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/14.jpg'))),
                        height: 220,
                      ),
                    ],
                  ))
                ]))));
  }
}
