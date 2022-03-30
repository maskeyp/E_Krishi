import 'package:final_krishi/contacts/Agrofarm/models/fish_model.dart';
import 'package:flutter/material.dart';

class FishFarm extends StatefulWidget {
  const FishFarm({Key? key}) : super(key: key);

  @override
  State<FishFarm> createState() => _FishFarmState();
}

class _FishFarmState extends State<FishFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Birds Farm'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: fishes.length,
            itemBuilder: (BuildContext context, int index) {
              Fish fish = fishes[index];
              return Card(
                elevation: 20,
                //color: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.arrow_drop_down_circle),
                      title: Text('${fish.name}'),
                      subtitle: Text(
                        '${fish.address}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${fish.number}',
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(16.0),
                    //   child: Image.asset(
                    //     contact.image,
                    //     fit: BoxFit.scaleDown,
                    //   ),
                    // ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
