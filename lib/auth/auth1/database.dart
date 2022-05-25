import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DatabasePage extends StatefulWidget {
  const DatabasePage({Key? key}) : super(key: key);

  @override
  State<DatabasePage> createState() => _DatabasePageState();
}

class _DatabasePageState extends State<DatabasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292e42),
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your Database",
                    style: TextStyle(
                      color: Color(0xff292e42),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.maxFinite,
              height: 200,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/digital/database.png"),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Support Database Engines",
                style: TextStyle(
                  color: Color(0xff292e42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Container(
                  width: MediaQuery.of(context).size.width + 30,
                  height: 180,
                  child: Row(
                    children: [
                      DatabaseEngines(
                        image: "assets/digital/postgresql.png",
                        subtitle: 'PostgreSQL',
                        title: 'Ver. 10, 11, 12',
                      ),
                      const SizedBox(width: 20),
                      DatabaseEngines(
                        image: "assets/digital/mysql.png",
                        subtitle: 'MySQL',
                        title: 'Ver. 8',
                      ),
                      const SizedBox(width: 20),
                      DatabaseEngines(
                        image: "assets/digital/redis.png",
                        subtitle: 'Redis',
                        title: 'Ver. 6',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Learn more about Managed Databases",
                style: TextStyle(
                  color: Color(0xff292e42),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 2 - 180,
                  height: 180,
                  child: Row(
                    children: [
                      ManageDatabase(
                        text: 'PRODUCT DOCS',
                        title: "Managed databases",
                        discription:
                            "Detailed information covering all aspects of managed databases",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        text: 'TUTORIALS',
                        title: "Understanding Managed Databases",
                        discription:
                            "A discussion of some of Managed Databases basic concepts",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        text: 'EDUCATION',
                        title: "Resource Center",
                        discription:
                            "Discver all of our Managed Databases resources - in a single place",
                      ),
                      const SizedBox(width: 20),
                      ManageDatabase(
                        text: 'API',
                        title: "Managed Databases API Docs",
                        discription:
                            "Use the API to automate cluster creation and updates",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ManageDatabase extends StatelessWidget {
  String text;
  String title;
  String discription;
  ManageDatabase({
    Key? key,
    required this.text,
    required this.title,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(0, 2),
            color: Colors.blueGrey.withOpacity(0.4),
          )
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              discription,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class DatabaseEngines extends StatelessWidget {
  String image;
  String title;
  String subtitle;

  DatabaseEngines({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _openDialogBox() {
      return showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text('Create Database'),
                content: const Text('Cluster is Created '),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text("Add a Volumn"),
                //     SizedBox(height: 5),
                //   ],
                // ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ));
    }

    return Container(
      width: 140,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(0, 2),
            color: Colors.blueGrey.withOpacity(0.4),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          // const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: _openDialogBox,
            child: Container(
              width: 110,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xff292e42),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Create a Cluster",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
