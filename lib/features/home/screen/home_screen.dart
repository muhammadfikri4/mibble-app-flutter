import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/features/_global/components/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String jsondata = '''
      [
        {
    "id": 1,
    "name": "Muhammad Fikri",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.",
    "like": 100,
    "comment": 5,
    "time": "2022-07-31 05:20:30"
  },
  {
    "id": 2,
    "name": "John Doe",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.",
    "like": 50,
    "comment": 5,
    "time": "2024-08-22 05:20:30"
  },
  {
    "id": 3,
    "name": "Nugraha",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.",
    "like": 45,
    "comment": 5,
    "time": "2024-04-20 11:47:21"
  },
  {
    "id": 4,
    "name": "Muhamad Gibran",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.",
    "like": 37,
    "comment": 5,
    "time": "2003-06-11 10:47:14"
  },
  {
    "id": 5,
    "name": "Riza",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipis",
    "like": 69,
    "comment": 5,
    "time": "2013-09-29 05:02:20"
  },
  {
    "id": 6,
    "name": "Robi Nugraha",
    "body": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut.. Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil, aut. Lorem ipsum dolor sit amet consectetur adipis",
    "like": 81,
    "comment": 5,
    "time": "2024-09-14 00:49:46"
  }
      ]
    ''';

    List<dynamic> data = jsonDecode(jsondata);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 0),

                            margin: index == data.length - 1
                                ? const EdgeInsets.only(bottom: 150)
                                : null,
                            width: double.infinity,
                            // height: 50,
                            decoration: index != data.length - 1
                                ? const BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors.black,
                                        style: BorderStyle.solid,
                                        width: 0.5,
                                      ),
                                    ),
                                  )
                                : null,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        decoration: const BoxDecoration(
                                            color: Colors.transparent),
                                        child: Text(
                                          textAlign: TextAlign.left,
                                          item['name'],
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 15),
                                        child: Text(
                                          item['body'],
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.transparent),
                                              child: const Icon(
                                                Icons.favorite_outline,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.transparent),
                                              child: const Icon(
                                                Icons.chat_bubble_outline,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.transparent),
                                              child: const Icon(
                                                Icons.share_outlined,
                                                color: Colors.black,
                                                size: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          // const SizedBox(height: 5), // Memberikan jarak antar item
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            const Navbar(),
          ],
        ),
      )),
    );
  }
}
