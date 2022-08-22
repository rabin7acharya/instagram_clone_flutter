import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  String? img, name;

  Story(
    this.img,
    this.name, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 36,
            backgroundColor: Color.fromARGB(255, 185, 133, 133),
            child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 34,
                child: CircleAvatar(
                  radius: 31,
                  backgroundImage: NetworkImage(img!),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(name!,
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
    ));
  }
}
