import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const Homepage({Key? key}) : super(key: key);

  final String name = "Nayan Vyas";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KRASHIDHARA'),
      ),
      body : Center(
        child: Container(
          child: Text('Welcome I am $name'),
        ),
      ),
      drawer: Drawer(

      ),
    );
  }
}
