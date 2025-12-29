import 'package:flutter/material.dart';

class BasicUiDesignScreen extends StatefulWidget {
  const BasicUiDesignScreen({super.key});

  @override
  State<BasicUiDesignScreen> createState() => _BasicUiDesignScreenState();
}

class _BasicUiDesignScreenState extends State<BasicUiDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/thumbnails/006/240/302/small/abstract-soft-focus-sunset-field-landscape-of-yellow-flowers-and-grass-meadow-warm-golden-hour-sunset-sunrise-time-tranquil-spring-summer-nature-closeup-and-blurred-forest-background-idyllic-nature-photo.jpg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 30,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/front-view-business-woman-suit_23-2148603018.jpg?semt=ais_hybrid&w=740&q=80',
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 20,
                          child: Icon(Icons.arrow_back_outlined),
                        ),
                        Positioned(
                          top: 80,
                          right: 30,
                          child: Icon(Icons.favorite_border_outlined),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Madrid City Tour for Designers',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is a random description of the topic',
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      rowIconText('20', Icons.favorite_border_outlined),
                      rowIconText('34', Icons.upload_outlined),
                      rowIconText('82', Icons.message_outlined),
                      rowIconText('295', Icons.face_outlined),
                    ],
                  ),
                  Divider(),
                  Text(
                    "A paragraph is a self-contained block of text, usually several sentences, focused on a single idea or topic, acting as a building block to organize longer writing for readability, featuring a topic sentence (main idea) and supporting details, and often ending with a concluding sentence. Paragraphs structure information into digestible chunks, guiding the reader through the text's development and making complex ideas easier to follow. ",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(width: 5),
        Icon(icon),
      ],
    );
  }
}
