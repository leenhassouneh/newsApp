import 'package:api_example/screens/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/my_component.dart';

class Food extends StatelessWidget {
  const Food({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataPost> myData = [
      DataPost(
        name: 'Leen Hassouneh',
        date: '29-01-2023 17:05:25.951348',
        imageAvatar:
            'https://i.pinimg.com/originals/3d/66/78/3d667893c5788613ff3590ca218a9cb2.jpg',
        image: 'assets/images/restoran.jpg',
        likes: '100',
        comments: '23 Comment',
        text: 'hi all',
      ),
      DataPost(
        name: 'Fahed Selawy',
        date: '23-01-2023 17:05:25.951348',
        imageAvatar:
            'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/man5-512.png',
        image: 'assets/images/fahed.jpg',
        likes: '1k',
        comments: '500 Comment',
        text: 'Like and Share (please)',
      ),
      DataPost(
        name: 'Tasbeeh Dawoud',
        date: '30-01-2023 12:05:25.951348',
        imageAvatar:
            'https://cdn4.iconfinder.com/data/icons/circle-avatars-1/128/050_girl_avatar_profile_woman_suit_student_officer-2-1024.png',
        image: 'assets/images/tasbeeh.png',
        likes: '340',
        comments: '322 Comment',
        text: 'Hellooo',
      ),
      DataPost(
        name: 'Almonter',
        date: '4-09-2023 10:05:25.546783',
        imageAvatar:
            'https://i.pinimg.com/736x/5f/40/6a/5f406ab25e8942cbe0da6485afd26b71.jpg',
        image: 'assets/images/monther.png',
        likes: '800',
        comments: '789 Comment',
        text: 'Perfect!',
      ),
      DataPost(
        name: 'Balqees asaad',
        date: '4-05-2023 10:05:25.546783',
        imageAvatar:
            'https://cdn3.vectorstock.com/i/1000x1000/01/77/businesswoman-character-avatar-icon-vector-12800177.jpg',
        image: 'assets/images/balqees.png',
        likes: '900',
        comments: '643 Comment',
        text: 'Love It !',
      ),
      DataPost(
        name: ' Sawsan Abd',
        date: '6-05-2023 3:05:25.576783',
        imageAvatar:
            'https://cdn.icon-icons.com/icons2/2643/PNG/512/female_woman_avatar_people_person_white_tone_icon_159370.png',
        image: 'assets/images/sawsan.png',
        likes: '289',
        comments: '123 Comment',
        text: 'what do you think !',
      ),
      DataPost(
        name: ' ismaeel ',
        date: '6-05-2023 3:05:25.576783',
        imageAvatar:
            'https://cdn3.iconfinder.com/data/icons/3d-printing-icon-set/512/User.png',
        image: 'assets/images/ismaeel.png',
        likes: '409',
        comments: '98 Comment',
        text: 'Hiiii !',
      ),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>myComponents(context,myData[index]),
                  separatorBuilder: (context,index)=>SizedBox(height: 10,),
                  itemCount: myData.length),
            ],
          ),
        ),
      ),
    );
  }
}

