import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 12, 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color.fromARGB(255, 206, 138, 133),
                  child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 18,
                      child: CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                            "https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=425,format=auto/sites/default/files/styles/768x768/public/d8/images/methode/2020/02/21/edf6e522-52de-11ea-8948-c9a8d8f9b667_image_hires_045852.jpg?itok=MBGVfIH7&v=1582232343"),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "postmalone",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "NewYork City",
                        style: TextStyle(
                            color: Color.fromARGB(255, 207, 196, 196),
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(Icons.more_vert, color: Colors.white),
          ]),
        ),
        Image.network(
            "https://i.pinimg.com/originals/79/cc/39/79cc39ef0b1d101ad13435d8b16f834a.jpg"),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Heart.png", width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset("assets/images/Comment.png", width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset("assets/images/Share.png", width: 26),
                ],
              ),
              Image.asset("assets/images/Bookmark.png", width: 26)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "375,950 Likes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      "Post Malone",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Good Morning 😋",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                Text(
                  "View All 4,570 comments",
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 155, 155),
                    fontSize: 14,
                  ),
                ),
                Text(
                  "7 minutes ago",
                  style: TextStyle(
                    color: Color.fromARGB(255, 167, 155, 155),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
