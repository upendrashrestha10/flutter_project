import 'package:flutter/material.dart';
import 'package:todo_app/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'TODO App',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddPage()),
                );
              },
              icon: Icon(Icons.add, color: Colors.white, size: 40),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blue, width: 4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Morning Exercise',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jog for 30 mins and stretch',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 45),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blue, width: 4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Team Meeting',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Discuss project progress at 3 PM',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 45),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 12),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.blue, width: 4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Submit Assignment',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Data Structures assignment',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ],
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 45),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
