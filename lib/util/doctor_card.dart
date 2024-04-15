import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this. doctorImagePath,
    required this. rating,  
    required this.doctorName,
    required this. doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 169, 211, 245),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            //picture
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                doctorImagePath,
                height: 150,
              ),
            ),

            //rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 255, 230, 0),
                  ),
                Text(rating, style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),

            //doctor name
            Text(doctorName, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

            //doctor title
            Text("$doctorProfession \n                   ?? yrs.")
          ],
        ),
      ),
    );
  }
}
