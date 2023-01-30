import 'package:flutter/material.dart';
import '../globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Music",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: Globals.music.length,
          itemBuilder: (context, n) {
            return Card(
                color: Colors.black,
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 100,
                  child: (ListTile(
                    onTap: () {
                      setState(() {
                        Globals.n = n;
                        Globals.song = Globals.music[n];
                      });
                      Navigator.of(context).pushNamed("music_screen");
                    },
                    title: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: Globals.music[n]['images'],
                                fit: BoxFit.fill,
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "${Globals.music[n]["Name"]}",
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${Globals.music[n]["singer"]}",
                                style: TextStyle(
                                  color: Colors.red.shade300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ));
          }),
      backgroundColor: Colors.white24,
    );
  }
}
