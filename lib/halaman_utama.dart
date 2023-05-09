import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Favorit.dart';
import 'Recommended_sites.dart';
import 'daftar_anggota.dart';
import 'aplikasi_stopwatch.dart';
import 'list_website.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Main Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DaftarAnggota()));
              },
              child: const Text('Daftar Anggota'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AplikasiStopwatch()));
              },
              child: const Text('Aplikasi Stopwatch'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebsitePage()));
              },
              child: const Text('Daftar Situs Rekomendasi'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoritePage(favoriteWebsites: [],)));
              },
              child: const Text('Situs Favorit'),
            ),
          ],
        ),
      ),
    );
  }
}


