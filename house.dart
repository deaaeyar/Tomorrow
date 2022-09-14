import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  dynamic name;
  Body({super.key,this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo page",
          style: TextStyle(fontWeight:FontWeight.bold)
        ),
        actions: [
          const Icon(Icons.home),
          IconButton(onPressed: (){}, icon: const Icon(Icons.person))
        ],
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
              "Have a drink $name.",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20,),
            Image.asset('assets/images/1730478.jpg'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => const Home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900]
                ),
                child: const Text("Previous",)
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),
    );
  }
}