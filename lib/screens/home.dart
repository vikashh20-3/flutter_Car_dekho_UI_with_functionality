import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
// import 'drawer.dart';
// import 'login.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  late List<Widget> imageSliders = imgList
      .map((item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VxAppBar(
        searchBar: true,
        title: "Car Dekho".text.make(),
      ),
      body: SizedBox(
        // height:MediaQuery.of(context).size.height,
        // width:MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(15)),
                height: 45,
                width: 380,
                child: const Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Search",
                      style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.mic),
                  )
                ]),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 47.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "FEATURED",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Card(
                          color: Colors.deepPurpleAccent,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text("New Cars")
                                  .text
                                  .white
                                  .medium
                                  .xl2
                                  .center
                                  .make(),
                            ),
                          )),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Card(
                            color: Colors.redAccent,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const Text("Buy Used Cars")
                                    .text
                                    .white
                                    .medium
                                    .xl2
                                    .center
                                    .make(),
                              ),
                            ))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width / 2.3,
                      child: Card(
                          // shape: RoundedRectangleBorder(),
                          color: Colors.blue,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Sell Car")
                                    .text
                                    .white
                                    .medium
                                    .xl2
                                    .center
                                    .make(),
                              ))),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 5.5,
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30)),
                          child: Card(
                              color: Colors.lightBlueAccent,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("News")
                                    .text
                                    .white
                                    .medium
                                    .xl2
                                    .center
                                    .make(),
                              )),
                        )),
                  ],
                ),
              ).pOnly(bottom: 20),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "View More".text.make(),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )),
              "Popular New Cars By Budget"
                  .text
                  .start
                  .xl2
                  .make()
                  .pOnly(top: 20)
                  .pOnly(bottom: 18),
              SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width - 20,
                child: ListView(
                  // shrinkWrap: true,
      
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      color: Colors.black45,
                      child: Row(
                        children: [
                          "Cars Under-5 lakh".text.white.make().p(5),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.black45,
                      child: Row(
                        children: [
                          "Cars Under-5 lakh".text.white.make().p(8),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.black45,
                      child: Row(
                        children: [
                          "Cars Under-5 lakh".text.white.make().p(8),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.black45,
                      child: Row(
                        children: [
                          "Cars Under-5 lakh".text.white.make().p(8),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.black45,
                      child: Row(
                        children: [
                          "Cars Under-5 lakh".text.white.make().p(8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: ((context, index) {
                    return GridTile(
                      child: SizedBox(
                        height:50,
                        child: Image.network("https://picsum.photos/id/1/200/300"),
                      ),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
