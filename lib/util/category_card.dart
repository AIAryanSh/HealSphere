import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  
  final iconImagePath;
  final String categoryName;

  CategoryCard({
    required this.iconImagePath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 180, 211, 237),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 40,
            ),

            SizedBox(width: 10),

            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
