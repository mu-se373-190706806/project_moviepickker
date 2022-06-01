import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class third_page extends StatelessWidget {
  const third_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.pink[800],appBar:
    AppBar(backgroundColor: Colors.pink[700],
      elevation: 50,
      titleSpacing: 40  ,
      title: Text("movie picker",style: TextStyle(fontSize: 40),),
      actions: [
        IconButton(icon: Icon(Icons.search),
          onPressed: (){},
          iconSize: 30,)
      ],),
      body: body3() ,
    );
  }
}


class body3 extends StatefulWidget {
  const body3({Key? key}) : super(key: key);

  @override
  State<body3> createState() => _body3State();
}

class _body3State extends State<body3> {
  late YoutubePlayerController vidoe_player;

  @override
  void initState() {
    const url = 'https://www.youtube.com/watch?v=8hP9D6kZseM';
    vidoe_player = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
        ));

    super.initState();
  }
  @override
  void deactivate() {
    vidoe_player.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(7),
            color: Colors.deepPurple[600],
            width: 1600,
            height: 240,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                Text('Insception',style: TextStyle(fontSize: 50,)),
                SizedBox(height: 35,),
                Text('The rate : 8.8/10',style: TextStyle(fontSize: 25,)),
                SizedBox(height: 15,),
                Text('Advanture     Action    Sci-fi',style: TextStyle(fontSize: 25,)),
              ],),
              SizedBox(height: 230,width: 280,child: Image.asset('assets/inception.jpg')),
            ],),
          ),
          Container(
              padding: EdgeInsets.all(7),
              color: Colors.purple,
              width: 1600,

              child: Column(
                children: [
                  Text('Actors',style: TextStyle(fontSize: 30),),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/joseph_gordon_inception.jpg',scale: 1.5,),
                      Image.asset('assets/leonardo_inception.jpg',scale: 1.5,),
                      Image.asset('assets/tom_hardy_inception.jpg',scale: 1.5,),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Text('Trailer',style: TextStyle(fontSize: 40),),
                  SizedBox(height: 20,),
                  YoutubePlayer(controller: vidoe_player,
                      showVideoProgressIndicator: true)
                ],
              )
          ),
        ],
      ),
    );
  }
}

