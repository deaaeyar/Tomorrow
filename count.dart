import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});
  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  final GlobalKey<ScaffoldState>_scaffoldState = GlobalKey<ScaffoldState>();
  var result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Current number is",
            style: TextStyle(fontSize: 30,fontFamily: 'English',color: Colors.black87),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal:10),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 0.1),
            ),
            child: Text(
              "$result",
              style:const TextStyle(fontFamily:'Englisg',fontSize: 40,color:Colors.white,fontWeight: FontWeight.bold)
            )
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color:Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(onPressed: (){
                  setState(() {
                    if(result>0){result = result - 1;}
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Can't lower the zero.")));
                    }
                  });
                },icon: const Icon(Icons.remove),color: Colors.white,),
              ),
              const SizedBox(width: 100,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(onPressed: (){
                  setState(() {
                    result = result + 1;
                  });
                }, icon: const Icon(Icons.add),color: Colors.white,),
              )
            ],
          ),
          const SizedBox(height:50),
          ElevatedButton(
            onPressed: (){
            setState(() {
              result = 0;
            });
            }, child: const Text("Reset",style: TextStyle(fontSize: 30))
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushNamed(context,'/home');},
        backgroundColor: Colors.red[900],
        child: const Icon(Icons.home),
      ),
    );
  }
}