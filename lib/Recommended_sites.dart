import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Favorit.dart';

class Website {
  final String name;
  final String imageUrl;
  final String description;
  final String url;
  bool isFavorite;

  Website({
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.url,
    required this.isFavorite,
  });
}

class WebsitePage extends StatefulWidget {
  @override
  int _selectedIndex = 0;
  _WebsitePageState createState() => _WebsitePageState();

}

class _WebsitePageState extends State<WebsitePage> {
  final List<Website> _websites = [
    Website(
      name: 'Google',
      imageUrl: 'https://picsum.photos/id/10/200/200',
      description: 'Google is a search engine that allows you to find information on the internet.',
      url: 'https://www.google.com/',
      isFavorite: false,
    ),
    Website(
      name: 'GitHub',
      imageUrl: 'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
      description: 'GitHub is a web-based platform that allows you to host and review code, manage projects, and build software.',
      url: 'https://github.com/',
      isFavorite: false,
    ),
    Website(
      name: 'Flutter',
      imageUrl: 'https://picsum.photos/id/10/200/200',
      description: 'Flutter is a UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
      url: 'https://flutter.dev/',
      isFavorite: false,
    ),
    Website(
      name: 'Stack Overflow',
      imageUrl: 'https://picsum.photos/id/10/200/200',
      description: 'Stack Overflow is a question and answer site for professional and enthusiast programmers.',
      url: 'https://stackoverflow.com/',
      isFavorite: false,
    ),
  ];

  final List<Website> _favoriteWebsites = [];

  void _toggleFavorite(Website website) {
    setState(() {
      if (_favoriteWebsites.contains(website)) {
        _favoriteWebsites.remove(website);
        website.isFavorite = true;
      } else {
        _favoriteWebsites.add(website);
        website.isFavorite = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Websites'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _websites.map((website) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: InkWell(
                  onTap: () {
                    _launchUrl('${website.url}');
                  },
                  child: Column(
                    children: [
                      Image.network(website.imageUrl, height: 100,width: 75),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(website.name),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(website.description),
                      ),
                      IconButton(
                        icon: Icon(_favoriteWebsites.contains(website) ? Icons.favorite : Icons.favorite_border),
                        onPressed: () => _toggleFavorite(website),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FavoritePage(favoriteWebsites: _favoriteWebsites),
            ),
          );
        },
        child: Icon(Icons.favorite),
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
