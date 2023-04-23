import 'package:day_1_ui/screens/comment_screen.dart';
import 'package:flutter/material.dart';

class SongScreen extends StatelessWidget {
  String song;
  String name;
  String profile;
  String follower;
  SongScreen(
      {super.key,
      required this.song,
      required this.name,
      required this.profile,
      required this.follower});

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
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.navigate_before,
                          size: 30,
                        )),
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
                  height: size.height * 0.70,
                ),
                Column(
                  children: [
                    // Container(
                    //   height: 60,
                    //   width: 60,
                    //   decoration: BoxDecoration(
                    //     image: const DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: AssetImage('assets/profile/p3.jpg'),
                    //     ),
                    //     border: Border.all(color: Colors.grey),
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      CommentScreen(song: song, name: name)));
                            },
                            child: Container(
                              height: 40,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.comment),
                                  Text("Comment"),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(profile),
                                  ),
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text(name),
                              Text(follower)
                            ],
                          ),
                          Container(
                            height: 40,
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey.shade400),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.favorite_outline),
                                Text("Like"),
                              ],
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
        ],
      ),
    );
  }
}
