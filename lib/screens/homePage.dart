import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //design story item
  Widget _buildStory() => Container(
    margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
    child: Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/avatar.jpg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blueAccent),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipOval(
              child: Image.asset('assets/avatar.jpg', width: 35, height: 35,),
            ),
          ),
        ),
        const Positioned(
            bottom: -5,
            left: 0,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'User name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
        ),
      ],
    ),
  );

  //design post item
  Widget _buildPost() => Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 10,),
            Container(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipOval(
                child: Image.asset('assets/avatar_circle.jpg', width: 35, height: 35,),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lang thang Hà Nội',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '4 giờ',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' . ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const Icon(
                      Icons.public,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 110,),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.more_horiz_outlined,
                color: Colors.grey.shade600,
              ),
            ),

            IconButton(
              onPressed: (){},
              icon: Icon(Icons.clear_rounded, color: Colors.grey.shade500),
            ),
          ],
        ),
        const Text(
          'This is the description of post.',

        ),
        Image.asset('assets/avatar.jpg'),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.thumbsUp, color: Colors.grey.shade600,),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.heart, color: Colors.grey.shade600,),
            ),
            Text(
              '1.069',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 50,),
            Text(
              '13 bình luận',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            Text(
              ' . ',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade700,
              ),
            ),
            Text(
              '13 lượt chia sẻ',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.thumbsUp, color: Colors.grey.shade600,),
                  const SizedBox(width: 5,),
                  Text('Thích', style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.messenger_outline_outlined, color: Colors.grey.shade600,),
                  const SizedBox(width: 5,),
                  Text('Bình luận', style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.shareFromSquare, color: Colors.grey.shade600, size: 20,),
                  const SizedBox(width: 5,),
                  Text('Chia sẻ', style: TextStyle(color: Colors.grey.shade600),),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
          thickness: 0,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipOval(
                  child: Image.asset('assets/avatar.jpg', width: 50, height: 50,),
                ),
                SizedBox(
                  width: 280,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bạn đang nghĩ gì?',
                      contentPadding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                      hintStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.grey.shade300, width: 2),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    color: Colors.green,
                    icon: const Icon(Icons.photo_library_outlined)
                ),
              ],
            ),
          ),
          Divider(
            height: 5,
            thickness: 8,
            color: Colors.grey.shade300,
          ),

          //story listview
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => _buildStory(),
            ),
          ),
          Divider(
            height: 5,
            thickness: 8,
            color: Colors.grey.shade300,
          ),

          //post listview
          ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 15,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              child: _buildPost(),
            ),
            separatorBuilder: (BuildContext context, int index) => Divider(
              height: 5,
              thickness: 8,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
    );
  }
}