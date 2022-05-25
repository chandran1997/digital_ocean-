import 'package:flutter/material.dart';

class DropletPage extends StatefulWidget {
  const DropletPage({Key? key}) : super(key: key);

  @override
  State<DropletPage> createState() => _DropletPageState();
}

class _DropletPageState extends State<DropletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292e42),
        actions: const [
          Icon(Icons.logout),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Your Droplet",
                  style: TextStyle(
                    color: Color(0xff292e42),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                PopupMenuButton(
                    icon: const Icon(Icons.filter_alt_sharp),
                    itemBuilder: (BuildContext context) => [
                          const PopupMenuItem(
                            child: Text("Recent Droplet"),
                          ),
                        ])
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.maxFinite,
            height: 200,
            decoration: const BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                image: AssetImage("assets/digital/dropletss.png"),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      height: 10,
                    ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 3,
                          )
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "ubuntu-s-1vcpu-1gb-blr1-01",
                                  style: TextStyle(
                                    color: Color(0xff292e42),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // Icon(Icons.more_vert)
                                PopupMenuButton(
                                    itemBuilder: (BuildContext context) => [
                                          const PopupMenuItem<String>(
                                            child: Text('More'),
                                          ),
                                        ])
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "4 GB / 25 GB Disk / BLR1 - Ubuntu 18 04 (LTS)*64",
                              style: TextStyle(
                                color: Color(0xff292e42),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff292e42),
                                    ),
                                    child: const Text(
                                      "134.209.144.4",
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xff292e42),
                                    ),
                                    child: const Text(
                                      "05/08/2021",
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
