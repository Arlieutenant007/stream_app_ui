import 'package:day_1_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  String name;
  String profile;
  ProfileCard({super.key, required this.name, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
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
          const SizedBox(
            height: 5,
          ),
          Container(
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 58, 53, 53),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              name,
              maxLines: 1,
              style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class FollowProfile extends StatelessWidget {
  const FollowProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: profile.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 150,
              width: size.width * 0.60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(profile[index]['profile']),
                ),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          );
        },
      ),
    );
  }
}
