import 'package:day_1_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: index == 0 ? Colors.orange : Colors.transparent,
                  // boxShadow: [
                  //   BoxShadow(
                  //       offset: Offset(-1, -1),
                  //       blurRadius: 15,
                  //       blurStyle: BlurStyle.solid,
                  //       color: Colors.grey.shade600,
                  //       spreadRadius: 1)
                  // ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  category[index],
                  style: TextStyle(
                      fontSize: 12,
                      color: index == 0
                          ? Colors.white
                          : Color.fromARGB(255, 194, 185, 185)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
