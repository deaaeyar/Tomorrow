import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home Page",
            style: TextStyle(fontWeight:FontWeight.bold)
          ),
          actions: [
            const Icon(Icons.home),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Welcome to my kingdom.",
              style: TextStyle(fontSize: 30)
            ),
            const SizedBox(height: 20),
            const Text(
              "Triss Merigold ပုံကြည့်လိုပါက next ကိုနှိပ်ပါ။",
              style: TextStyle(fontSize: 20,fontFamily: 'Burmese'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/House'); // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => const House()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900]
                ),
                child: const Text("Next"),
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.pushReplacementNamed(context, '/');
          },
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
        drawer: const Drawer(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(Icons.person))
          ],
        onTap: (value) {},
        )
      );
  }
}
