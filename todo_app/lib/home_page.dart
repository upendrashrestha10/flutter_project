import 'package:flutter/material.dart';
import 'package:todo_app/add_page.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [
    {'title': 'Morning Exercise', 'subtitle': 'jog for 30 min'},
    {'title': 'Clean Room', 'subtitle': 'Vaccum, dust and wiper'},
  ];
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
                  MaterialPageRoute(builder: (context) => AddPage(addItem)),
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
            for (int i = 0; i <= data.length - 1; i++) ...{
              TOdoCard(data[i]['title']!, data[i]['subtitle']!,() => deleteItem(i),
              ),
            },
          ],
        ),
      ),
    );
  }

  addItem(String title, String subtitle) {
    setState(() {
      data.add({'title': title, 'subtitle': subtitle});
    });
  }

  deleteItem(int index){
    setState(() {
      data.removeAt(index);
    });
  }
}

class TOdoCard extends StatefulWidget {
  String title;
  String subtitle;
  final VoidCallback onDelete;
  TOdoCard(this.title, this.subtitle, this.onDelete, {super.key});

  @override
  State<TOdoCard> createState() => _TOdoCardState();
}

class _TOdoCardState extends State<TOdoCard> {
  Color?cardColor;
  List<Color?> colorList = [
    Colors.red,
    Colors.blueAccent,
    Colors.orangeAccent,
    Colors.blueGrey,
    Colors.white,
  ];


  @override
  void initState(){
    int index = Random().nextInt(colorList.length);
    cardColor = colorList[index];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, top: 12),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: cardColor,
        border: Border.all(color: Colors.black, width: 4),
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
                widget.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.subtitle,
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ],
          ),

          IconButton(
            onPressed: () {
              widget.onDelete();
            },
            icon: Icon(Icons.delete, color: Colors.black, size: 45),
          ),
        ],
      ),
    );
  }
}
