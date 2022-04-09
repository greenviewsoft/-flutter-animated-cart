import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_firstapp/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: ListTile(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailsScreen(),),),
                leading: Hero(tag: '1',child: Image.asset('assets/fruits.png')),
                title: Text('Fresh Vegetables'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
