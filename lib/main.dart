import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Squed Gaurd',
      debugShowCheckedModeBanner: false,
      home: Gaurd3d(),
    );
  }
}

class Gaurd3d extends StatefulWidget {
  const Gaurd3d({Key? key}) : super(key: key);

  @override
  State<Gaurd3d> createState() => _Gaurd3dState();
}

class _Gaurd3dState extends State<Gaurd3d> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: Colors.black,
      mainChild: Column(
        children: [
          Expanded(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1634152962476-4b8a00e1915c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      drawerChild: Column(
        children: [
          Expanded(
              child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1634195130430-2be61200b66a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
            fit: BoxFit.cover,
          ))
        ],
      ),
    );
  }
}
