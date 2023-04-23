import 'package:flutter/material.dart';

import '../constants/constant.dart';

class CommentScreen extends StatelessWidget {
  String song;
  String name;
  CommentScreen({super.key, required this.song, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            song,
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.navigate_before,
                        size: 30,
                      ),
                      Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(31, 48, 39, 39)),
                        child: const Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.55,
                  ),
                  SizedBox(
                    height: size.height * 0.25,
                    child: ListView.builder(
                        itemCount: message.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage(message[index]['profile']),
                                  ),
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                width: size.width * 0.80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      message[index]['name'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      message[index]['message'],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 5,
                                      softWrap: false,
                                    )
                                  ],
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 45,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: const Icon(Icons.navigate_before),
                            ),
                            Container(
                              height: 45,
                              width: size.width * 0.80,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Your comment here",
                                    enabledBorder: InputBorder.none,
                                    suffixIcon: Icon(Icons.send)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
