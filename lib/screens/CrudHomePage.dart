import 'package:crud_firebase/screens/CreateUserScreen.dart';
import 'package:crud_firebase/screens/DeleteUserScreen.dart';
import 'package:crud_firebase/screens/ReadUserScreen.dart';
import 'package:crud_firebase/screens/UpdateUserScreen.dart';
import 'package:flutter/material.dart';

class CrudHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase CRUD'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Garantir que os botões ocupem só o necessário
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Define uma largura mínima (tela cheia) e altura
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), 
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateUserScreen()),
                  );
                },
                child: Text('Create User', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Tamanho fixo para todos
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), 
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReadUserScreen()),
                  );
                },
                child: Text('Read User', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Tamanho fixo para todos
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), 
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateUserScreen()),
                  );
                },
                child: Text('Update User', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50), // Tamanho fixo para todos
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32), 
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeleteUserScreen()),
                  );
                },
                child: Text('Delete User', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}