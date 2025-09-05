import 'package:flutter/material.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({super.key});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  String mood = '';

  void happy() {
    setState(() {
      mood = 'Happy ❤️';
    });
  }

  void sad() {
    setState(() {
      mood = 'Sad 🥺';
    });
  }

  void netural() {
    setState(() {
      mood = 'Netural 👌';
    });
  }

  void reset() {
    setState(() {
      mood = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'How are you feeling today?',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      happy();
                    },
                    child: Text('😃', style: TextStyle(fontSize: 70)),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      netural();
                    },
                    child: Text('😊', style: TextStyle(fontSize: 70)),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {
                      sad();
                    },
                    child: Text('😞', style: TextStyle(fontSize: 70)),
                  ),
                ],
              ),
                SizedBox( height: 20,),
              Text(
                'You are feeling: $mood',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20,),

              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue
                      
                    ),
                    onPressed: () {
                      reset();
                    },
                    child: Text('Reset', 
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      )),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
