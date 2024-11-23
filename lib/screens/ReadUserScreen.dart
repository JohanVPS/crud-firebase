import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ReadUserScreen extends StatelessWidget {
  Future<List<QueryDocumentSnapshot>> getUsers() async {
    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('users').get();
    return snapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Read Users')),
      body: FutureBuilder<List<QueryDocumentSnapshot>>(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No Users Found'));
          } else {
            return ListView(
              padding: EdgeInsets.all(16),
              children: snapshot.data!
                  .map((doc) => Card(
                        margin: EdgeInsets.only(bottom: 10),
                        elevation: 5,
                        child: ListTile(
                          title: Text(
                            doc['full_name'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Age: ${doc['age']}'),
                        ),
                      ))
                  .toList(),
            );
          }
        },
      ),
    );
  }
}