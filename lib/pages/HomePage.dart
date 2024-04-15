// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:health_app/util/category_card.dart';
import 'package:health_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 0),
                      Text(
                        "AryanSh!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),

                  //PFP
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 116, 189, 250),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 175, 197),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    //animation or Picture
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 140,
                        width: 130,
                        //color: Colors.blue,
                        //alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Image.asset(
                            'lib/Images/pngtree-doctor-girl-png-image_14291659-removebg-preview.png',
                            height: 140,
                            fit: BoxFit.fill,
                            // width:100,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      width: 0,
                    ),
                    //Text and Button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How do You Feel??",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Fill out your Medical Card right Now?",
                            style: TextStyle(
                              fontSize: 14,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 94, 162, 217),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 213, 223),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Search for the Services"),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            //horozontal lise view

            // padding: const EdgeInsets.symmetric(horizontal: 25),
            Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryCard(
                      categoryName: 'Dentist',
                      iconImagePath: 'lib/Icons/tooth.png',
                    ),
                    CategoryCard(
                      categoryName: 'Surgeon',
                      iconImagePath: 'lib/Icons/surgeon.png',
                    ),
                    CategoryCard(
                      categoryName: 'Medicine',
                      iconImagePath: 'lib/Icons/medicine.png',
                    ),
                  ],
                )),

            SizedBox(height: 25),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 120, 114, 114),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorCard(
                    doctorImagePath: 'lib/Images/GK9asuiaoAA1Ugo.jpg',
                    rating: '4.9',
                    doctorName: 'Dr. Yamraj',
                    doctorProfession: 'Autopsy Surgeon, Therapist',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/Images/WyGI5i4t_400x400.jpg',
                    rating: '4.9',
                    doctorName: 'Dr. Nitin',
                    doctorProfession: '    Plumber, Austronaut ',
                  ),
                  DoctorCard(
                    doctorImagePath: 'lib/Images/akg_Ov8S_400x400.jpg',
                    rating: '4.9',
                    doctorName: '  Dr. Pratik',
                    doctorProfession: '       Pancreas Surgeon',
                  ),
                ],
              ),
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
