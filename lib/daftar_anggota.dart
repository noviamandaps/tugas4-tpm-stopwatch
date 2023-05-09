import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DaftarAnggota extends StatelessWidget {
  final nama1 = "Novi Amanda Puspita Sari";
  final nama2 = "Aziz Fatih Fauzi";
  final nama3 = "Christian";

  final nim1 = "123200065";
  final nim2 = "123200070";
  final nim3 = "123200134";

  final imageUrl1 =
      "https://media.licdn.com/dms/image/D5603AQH-TOQwQ8524g/profile-displayphoto-shrink_400_400/0/1680873717794?e=1686182400&v=beta&t=B45sDPIpr_DNyTNdFwZD1erKG-4vTf-eiugu-eDuyFA";
  final imageUrl2 =
      "https://media.licdn.com/dms/image/D5603AQERg2hCFqemzg/profile-displayphoto-shrink_200_200/0/1665727788766?e=1684368000&v=beta&t=_B-xxkvYfvL5PZd5QnAR8p3uVmqZYgaINs-tk28BuUs";
  final imageUrl3 =
      "https://media.licdn.com/dms/image/D5603AQFNfzYJMJr-YQ/profile-displayphoto-shrink_400_400/0/1680873813266?e=1686182400&v=beta&t=OB5eqUaecftQiiFGwaA_rLbzFHMmA6fYeCQTj3_qA9c";

  const DaftarAnggota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Anggota'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imageUrl1),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nama1,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            nim1,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imageUrl2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nama2,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            nim2,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(imageUrl3),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nama3,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            nim3,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
