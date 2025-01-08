import 'dart:io';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
      child:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // profile picture
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const SizedBox(height: 16),

              // Nama
              const Text(
                'Muhammad Dimas',
                style:  TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Emaik
              const Text(
                'muhammaddimas@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),

              //Nomor Telepon
              const Text(
              '+62 822 8167 9875',
              style: TextStyle(
                fontSize: 18,
                color:  Colors.pinkAccent,
              ),
            ),
            const SizedBox(height: 24),

            // additional details
          const Divider(height: 1, thickness: 1, color: Colors.grey),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:const [
                  Icon(Icons.cake,color: Colors.blueAccent, size: 30),
                  const SizedBox(height: 8),
                  Text(
                    'Birthday',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '15 September 2004',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
      
              Column(
                children: const [
                  Icon(Icons.location_city, color: Colors.blue, size: 30),
                  SizedBox(height: 8),
                  Text(
                    'Kota',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    'Palembang',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ],
        const SizedBox(height: 24),

        // edit button
        ElevatedButton(
          onPressed: () {
            // menavigasi ke halaman edit profile saat tombol ditekan
            Navigator.push(context, route)
          },
        )
      ),
    );
  
    );
  }
}