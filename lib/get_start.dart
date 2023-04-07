import 'package:flutter/material.dart';
import 'home_screen.dart';

// ignore: camel_case_types
class GetStart_Screen extends StatelessWidget {
  const GetStart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Center(child: Image.network('https://play-lh.googleusercontent.com/WkK8-_NYDo0f15qfGsZnn4iZ9G7Q-MMloycE5mdnClbUNnkQ50hZrkWi5xxubg5_F8E')
          ),
          SizedBox(height: 30),

          ElevatedButton(
          child: Text('get start'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Home_Screen()),
            );
          },
          style: ButtonStyle(

            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 20, 144, 211)), 
            
            minimumSize: MaterialStateProperty.all<Size>(
            Size(230, 50),
        ),     
        ),
        )
        ],
      ),
    );
  }
}
