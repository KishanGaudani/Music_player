import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:music_app_pr/globals.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  playAudio() async {
    await Globals.song['play'].open(
      Audio(Globals.song['song']),
      autoStart: false,
    );

    setState(() {
      Globals.song['timer'] =
          Globals.song['play'].current.value!.audio.duration;
    });
  }

  @override
  void initState() {
    super.initState();
    playAudio();
  }

  @override
  void dispose() async {
    super.dispose();
    playAudio();
  }

  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.red,
          ),
        ),
        title: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(
                "${Globals.song['Name']} - ${Globals.song['singer']}",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image(
              image: Globals.song['images'],
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black45,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image(
                      image: Globals.song['images'],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade800,
                  ),
                  child: StreamBuilder(
                    stream: Globals.song['play'].currentPosition,
                    builder: (context, AsyncSnapshot<Duration> snapshot) {
                      Duration? currentPosition = snapshot.data;

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$currentPosition".split(".")[0],
                            style: const TextStyle(
                                color: Colors.red, fontSize: 16),
                          ),
                          Slider(
                            activeColor: Colors.black,
                            inactiveColor: Colors.black54,
                            thumbColor: Colors.red,
                            min: 0,
                            max: Globals.song['timer'].inSeconds.toDouble(),
                            value: (currentPosition != null)
                                ? currentPosition.inSeconds.toDouble()
                                : 0,
                            onChanged: (val) async {
                              await Globals.song['play']
                                  .seek(Duration(seconds: val.toInt()));
                            },
                          ),
                          Text(
                            "${Globals.song['timer']}".split(".")[0],
                            style: const TextStyle(
                                color: Colors.red, fontSize: 16),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        // padding: EdgeInsets.all(10),
                        iconSize: 55,
                        icon: Icon(
                          (isPlaying) ? Icons.pause : Icons.play_arrow,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          setState(() {
                            isPlaying = (isPlaying) ? false : true;
                          });
                          (isPlaying)
                              ? await Globals.song['play'].play()
                              : await Globals.song['play'].pause();
                        },
                      ),
                      IconButton(
                        iconSize: 25,
                        icon: const Icon(
                          Icons.stop,
                          color: Colors.red,
                        ),
                        onPressed: () async {
                          setState(() {
                            isPlaying = false;
                          });
                          await Globals.song['play'].stop();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
