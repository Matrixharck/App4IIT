import 'package:flutter/material.dart';
import 'package:iit_app/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RedPage(),
    );
  }
}

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 247, 17, 0), // Fond rouge
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png', // Remplace par le chemin de ton image
                width: 380,
                height: 180,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50), // Espace entre l'image et le bouton
              ElevatedButton(
                onPressed: () {
                  // Action du bouton (ajoute ici une navigation si besoin)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 45), // Augmente la taille du bouton
                  backgroundColor: const Color.fromARGB(
                      255, 250, 248, 248), // Fond du bouton blanc
                  foregroundColor:
                      const Color.fromARGB(255, 2, 0, 0), // Texte en noir
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25), // Ajoute des bords arrondis si souhaité
                  ),
                ),
                child: const Text(
                  "Commencer",
                  style: TextStyle(
                    fontSize: 18, // Augmente la taille du texte si nécessaire
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
