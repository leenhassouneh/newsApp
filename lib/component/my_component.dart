import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/news_models.dart';
import '../screens/data.dart';

class MyComponent {

  static Widget buildNews(BuildContext context,Articles models) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: models.urlToImage==null? NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.9rtljhn4zN5vq2TaShlWKAHaHa&pid=Api&P=0&h=220"): NetworkImage(
                        "${models.urlToImage}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 150,

                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(topRight:Radius.circular(10) ,bottomRight: Radius.circular(10) ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Text(
                        "${models.title}",
                        style: GoogleFonts.abel(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "${models.author}",
                        style: GoogleFonts.abel(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "${models.publishedAt}",
                      style: GoogleFonts.abel(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 13,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );






}




















Widget myComponents(context,DataPost data)=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Card(
    elevation: 10,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "${data.imageAvatar}"),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${data.name}",
                              style: GoogleFonts.abel(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.check_circle,
                              color: Colors.deepOrange,
                            ),
                          ],
                        ),
                        Text(
                          "${data.date}",
                          style: GoogleFonts.abel(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(Icons.more_horiz_sharp),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                height: 50,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "${data.text}",
                  style: GoogleFonts.abel(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "${data.image}",
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red[800],
                        size: 26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${data.likes}",

                        style: GoogleFonts.aBeeZee(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.deepOrangeAccent[200],
                        size: 26,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${data.comments}",
                        style: GoogleFonts.abel(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Divider(
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("${data.image}"),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Write a comment ...",
                        style: GoogleFonts.abel(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red[800],
                        size: 26,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Like",
                        style: GoogleFonts.abel(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);

