import 'package:final_krishi/contacts/agrovet_suppliers/vets_model.dart';
import 'package:flutter/material.dart';

class VetsPage extends StatefulWidget {
  const VetsPage({Key? key}) : super(key: key);

  @override
  State<VetsPage> createState() => _VetsPageState();
}

class _VetsPageState extends State<VetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Agro Vets'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: vets.length,
            itemBuilder: (BuildContext context, int index) {
              Vet vet = vets[index];
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
                      title: Text('${vet.name}'),
                      subtitle: Text(
                        '${vet.address}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${vet.number}',
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
