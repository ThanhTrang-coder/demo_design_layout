import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //design story item
  Widget _buildStory() => Stack(
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
  );

  //design post item
  Widget _buildPost() => Container(
    padding: const EdgeInsets.all(5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Lang thang Hà Nội',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '4 giờ',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w400,
                  ),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.adb)
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.adb)
            ),
            Text(
              '100',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 100,),
            Text(
              '13 bình luận',
              style: TextStyle(
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
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
              mainAxisSize: MainAxisSize.min,
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
            height: 10,
            thickness: 8,
            color: Colors.grey.shade300,
          ),

          //story listview
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => _buildStory(),
              separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 4,);
              },
            ),
          ),
          Divider(
            height: 10,
            thickness: 8,
            color: Colors.grey.shade300,
          ),

          //post listview

        ],
      ),
    );
  }
}