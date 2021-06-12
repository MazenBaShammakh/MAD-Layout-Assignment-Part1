import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './widgets/devices_grid.dart';
import './providers/devices.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Devices())],
      child: MaterialApp(
        title: 'IoT Panel',
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text('My Home'),
            ),
            body: DevicesGrid(),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  title: Text('Home'),
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text('Messages'),
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.grey,
                  ),
                ),
                BottomNavigationBarItem(
                  title: Text('Profile'),
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        ),
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.blue,
        ),
      ),
    );
  }
}
