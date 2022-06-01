import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class second_page extends StatelessWidget {
  const second_page({Key? key}) : super(key: key);

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
      body: body2() ,
    );
  }
}


class body2 extends StatefulWidget {
  const body2({Key? key}) : super(key: key);

  @override
  State<body2> createState() => _body2State();
}

class _body2State extends State<body2> {
  late YoutubePlayerController vidoe_player;

  @override
  void initState() {
    super.initState();
    const url = 'https://youtu.be/qtRKdVHc-cE';
    vidoe_player = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          isLive: false
        ));
  }
  @override
  void deactivate() {
    vidoe_player.pause();
    super.deactivate();
  }
  @override
  void dispose() {
    vidoe_player.dispose();
    super.dispose();
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
                Text('Fight clube',style: TextStyle(fontSize: 50,)),
                SizedBox(height: 35,),
                Text('The rate : 8.8/10',style: TextStyle(fontSize: 25,)),
                SizedBox(height: 15,),
                Text('Drama',style: TextStyle(fontSize: 25,)),
              ],),
              SizedBox(height: 230,width: 280,child: Image.asset('assets/download.jpg')),
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
                      Image.asset('assets/brad_pitt_fight_club.jpg',scale: 12,),
                      Image.asset('assets/edward_narton_fight_club.jpg',scale: 1.5,),
                      Image.asset('assets/helena_bonham_fight_club.jpg',scale: 1.5,),
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

