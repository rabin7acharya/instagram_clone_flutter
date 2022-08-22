import 'package:flutter/material.dart';
import 'package:instagram/widgets/story.dart';

import '../widgets/post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        titleSpacing: 16,
        title: Image.asset(
          'assets/images/instagram_logo.png',
          height: 36,
        ),
        actions: <Widget>[
          InkWell(
            child: Image.asset(
              'assets/images/Heart.png',
              width: 26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              child: Image.asset('assets/images/Messenger.png', width: 26),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //instagram story list view
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                // color: Colors.grey,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 10, 0),
                      child: Column(
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              radius: 36,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor:
                                    Color.fromARGB(255, 51, 48, 48),
                                child: CircleAvatar(
                                  radius: 31,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/564x/d0/15/d7/d015d79dcf31a63b5c19e46d687c2cf4.jpg"),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 9,
                                  backgroundColor: Colors.blue,
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text("Your Story",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 207, 196, 196),
                                    fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    Story(
                        "https://i.pinimg.com/564x/17/a2/e7/17a2e755e01694ffbd8fb68ec81a4400.jpg",
                        "cristiano"),
                    Story(
                        "https://i.pinimg.com/564x/7b/7a/94/7b7a94e6c7405cfb04dc88916f84bd62.jpg",
                        "Juck"),
                    Story(
                        "https://i.pinimg.com/564x/73/27/1e/73271eced270451f824e2c9b7e528fd6.jpg",
                        "traviSScott"),
                    Story(
                        "https://i.pinimg.com/564x/58/f6/c3/58f6c31afb9fb83c61e06d5e37a9bb41.jpg",
                        "rajesh_hamal"),
                    Story(
                        "https://i.pinimg.com/564x/0f/6c/d8/0f6cd883b6c51118836532d9ddcc3637.jpg",
                        "Kylie_99"),
                    Story(
                        "https://i.pinimg.com/564x/4f/e6/60/4fe660eb5ce81a55d66b5b90dd7131a2.jpg",
                        "flux_academy"),
                  ],
                ),
              ),
            ),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 48,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Image.asset(
                    "assets/images/Home filled.png",
                    width: 26,
                  ),
                ),
                InkWell(
                  child: Image.asset(
                    "assets/images/Search.png",
                    width: 26,
                  ),
                ),
                InkWell(
                  child: Image.asset(
                    "assets/images/Add Icon Filled.png",
                    width: 26,
                  ),
                ),
                InkWell(
                  child: Image.asset(
                    "assets/images/Shop.png",
                    width: 26,
                  ),
                ),
                InkWell(
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromARGB(255, 51, 60, 85),
                    child: CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/d0/15/d7/d015d79dcf31a63b5c19e46d687c2cf4.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
