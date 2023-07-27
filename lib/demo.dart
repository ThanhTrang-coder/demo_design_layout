import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});



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
            const SizedBox(width: 90,),
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
              '1.069',
              style: TextStyle(
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 100,),
            Text(
              '13 bình luận',
              style: TextStyle(
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
          height: 5,
          thickness: 1,
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
                 Icon(Icons.adb, color: Colors.grey.shade600,),
                 Text('Thích', style: TextStyle(color: Colors.grey.shade600),),
               ],
             ),
             Row(
               children: [
                 Icon(Icons.chat_bubble_outline, color: Colors.grey.shade600,),
                 Text('Bình luận', style: TextStyle(color: Colors.grey.shade600),),
               ],
             ),
             Row(
               children: [
                 Icon(Icons.share_rounded, color: Colors.grey.shade600,),
                 Text('Chia sẻ', style: TextStyle(color: Colors.grey.shade600),),
               ],
             ),
           ],
         ),
       ),
        const Divider(
          height: 5,
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.grey,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'), centerTitle: true,),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) => _buildPost(),
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 10,
          thickness: 8,
          color: Colors.grey.shade300,
        ),
      ),
    );
  }

}