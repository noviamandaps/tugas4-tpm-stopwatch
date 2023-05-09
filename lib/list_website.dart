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

var  listWebsite = [
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
    url: '',
    isFavorite: false,
  ),
  Website(
    name: 'Flutter',
    imageUrl: 'https://picsum.photos/id/10/200/200',
    description: 'Flutter is a UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    url: '',
    isFavorite: false,
  ),
  Website(
    name: 'Stack Overflow',
    imageUrl: 'https://picsum.photos/id/10/200/200',
    description: 'Stack Overflow is a question and answer site for professional and enthusiast programmers.',
    url: '',
    isFavorite: false,
  ),
];