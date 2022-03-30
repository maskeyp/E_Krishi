import 'package:final_krishi/contacts/Agrofarm/models/animal_model.dart.dart';
import 'package:flutter/material.dart';

class AnimalFarm extends StatefulWidget {
  const AnimalFarm({Key? key}) : super(key: key);

  @override
  State<AnimalFarm> createState() => _AnimalFarmState();
}

class _AnimalFarmState extends State<AnimalFarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: animals.length,
            itemBuilder: (BuildContext context, int index) {
              Animal animal = animals[index];
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
                      title: Text('${animal.name}'),
                      subtitle: Text(
                        '${animal.address}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${animal.number}',
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
