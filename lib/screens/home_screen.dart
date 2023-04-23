import 'dart:ui';
import 'package:day_1_ui/screens/profile_screen.dart';
import 'package:day_1_ui/widgets/category_card.dart';
import 'package:day_1_ui/constants/constant.dart';
import 'package:day_1_ui/widgets/profile_card.dart';
import 'package:day_1_ui/screens/song_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00024fdb),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(profile[4]['profile']),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Vipendrasinh",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(31, 48, 39, 39)),
                          child: const Icon(Icons.search),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: profile.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileScreen(name: profile[index]['name'],photo: profile[index]['profile'],)));
                          },
                          child: ProfileCard(
                              name: profile[index]['name'],
                              profile: profile[index]['profile']),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CategoryCard(),
                  const SizedBox(
                    height: 30,
                  ),
                  const SongCard(),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: const Text(
                      "You Follow",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const FollowProfile(),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
            Align(
              heightFactor: 10,
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 15),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.home,
                            size: 35,
                          ),
                          Icon(
                            Icons.location_city,
                            size: 35,
                          ),
                          Icon(
                            Icons.message,
                            size: 35,
                          ),
                          Icon(
                            Icons.notification_add,
                            size: 35,
                          ),
                          Icon(
                            Icons.person,
                            size: 35,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
