
import 'package:final_krishi/contacts/agrovet_suppliers/machinery_model.dart';
import 'package:flutter/material.dart';

class MachinerySup extends StatefulWidget {
  const MachinerySup({Key? key}) : super(key: key);

  @override
  State<MachinerySup> createState() => _MachinerySupState();
}

class _MachinerySupState extends State<MachinerySup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text('Machiner Suppliers'),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: machinerys.length,
            itemBuilder: (BuildContext context, int index) {
              Machinery machinery = machinerys[index];
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
                      title: Text('${machinery.name}'),
                      subtitle: Text(
                        '${machinery.address}',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        '${machinery.number}',
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
