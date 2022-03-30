import 'package:final_krishi/contacts/Agrofarm/models/birdsmodel.dart';
import 'package:flutter/material.dart';

class BirdFarm extends StatefulWidget {
  const BirdFarm({Key? key}) : super(key: key);

  @override
  State<BirdFarm> createState() => _BirdFarmState();
}

class _BirdFarmState extends State<BirdFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Birds Farm'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: birds.length,
            itemBuilder: (BuildContext context, int index) {
              Bird bird = birds[index];
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
                      title: Text('${bird.name}'),
                      subtitle: Text(
                        '${bird.address}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${bird.number}',
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
