import 'package:flutter/material.dart';
import 'Recommended_sites.dart';
import 'package:url_launcher/url_launcher.dart';



class FavoritePage extends StatelessWidget {

  final List<Website> favoriteWebsites;

  FavoritePage({required this.favoriteWebsites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Websites'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: favoriteWebsites.map((website) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: InkWell(
                  onTap: () {
                      _launchUrl('${website.url}');
                  },
                  child: Column(
                    children: [
                      Image.network(website.imageUrl),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(website.name),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(website.description),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),

    );
  }
  Future<void> _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

class listWebsite {
  map(Padding Function(dynamic website) param0) {}
}
