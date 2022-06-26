import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:electronic/data.dart';
import 'package:electronic/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

homepage(int pageIndex) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
    child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/menu.png'),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Text(
          "Categories",
          style: TextStyle(
              fontSize: 27, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(category.length, (index) {
              return TextButton(
                  onPressed: () {
                    //     selected(index);
                  },
                  child: Text(
                    category[index],
                    style: TextStyle(
                        color: pageIndex == index ? Colors.white : Colors.grey),
                  ));
            }),
          ),
        ),
        Row(
          children: [
            Container(
              width: 250,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(228, 118, 124, 139)),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(hintText: 'Serach '),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
                width: 55,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(228, 118, 124, 139)),
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        CarouselSlider(
            items: List.generate(data.length, (index) {
            return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(228, 118, 124, 139)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("best product"),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Text(
                           data[index]['name'],
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                        data[index]['img'],
                          height: 120,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Color.fromARGB(227, 51, 53, 58)),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Color.fromARGB(226, 255, 255, 255)),
                            ),
                            Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Color.fromARGB(227, 58, 61, 68)),
                              child: Center(
                                child: Text(
                                   data[index]["price"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
            options: CarouselOptions(height: 320))
      ],
    ),
  );
}
