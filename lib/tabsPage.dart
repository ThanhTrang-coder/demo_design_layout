import 'package:app_demo/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'demo.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  sliver: SliverAppBar(
                    toolbarHeight: 50,
                    pinned: true,
                    floating: true,
                    title: const Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    actions: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.add),
                          color: Colors.black,
                          padding: const EdgeInsets.all(5),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.search, size: 20,),
                          color: Colors.black,
                          padding: const EdgeInsets.all(5),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        alignment: Alignment.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: IconButton(
                          icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                          color: Colors.black,
                          padding: const EdgeInsets.all(5),
                          onPressed: () {},
                        ),
                      ),
                    ],
                    bottom: const TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.blue,
                      indicatorWeight: 1,
                      tabs: [
                        Tab(icon: Icon(Icons.home, size: 25,)),
                        Tab(icon: Icon(Icons.ondemand_video_rounded)),
                        Tab(icon: FaIcon(FontAwesomeIcons.store, size: 20,)),
                        Tab(icon: FaIcon(FontAwesomeIcons.heartPulse)),
                        Tab(icon: Icon(Icons.notifications_rounded)),
                        Tab(icon: Icon(Icons.menu_rounded, size: 30)),
                      ]
                    ),
                  ),
                ),
              ),
            ],
            body: const TabBarView(
              children: [
                HomePage(),
                Demo(),
                // Center(child: Text('Video Page'),),
                Center(child: Text('Marketplace Page'),),
                Center(child: Text('Dating Page'),),
                Center(child: Text('Notification Page'),),
                Center(child: Text('Menu Page'),),
              ],
            )
          ),
        )
    );
  }
}