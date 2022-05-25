import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VolumnPage extends StatefulWidget {
  const VolumnPage({Key? key}) : super(key: key);

  @override
  State<VolumnPage> createState() => _VolumnPageState();
}

class _VolumnPageState extends State<VolumnPage> {
  _openDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Cretae Volumn'),
              content: const Text('Volumn is Created '),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff292e42),
        actions: const [Icon(Icons.logout)],
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
                  "Your Volumn",
                  style: TextStyle(
                    color: Color(0xff292e42),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: _openDialogBox,
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff292e42),
                    ),
                    child: const Center(
                      child: Text(
                        'Create Volumn',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.maxFinite,
            height: 200,
            decoration: const BoxDecoration(
                // color: Colors.red,
                ),
            child: SvgPicture.asset("assets/digital/uploading.svg"),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      height: 10,
                    ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: double.maxFinite,
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
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            right: 10,
                            child: PopupMenuButton(
                                icon: Icon(Icons.more_horiz),
                                itemBuilder: (BuildContext context) => [
                                      const PopupMenuItem<String>(
                                        child: Text('More'),
                                      ),
                                    ]),
                          ),
                          Positioned(
                            top: 10,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage("assets/icons/drop.png"),
                                  )),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "volumn-sfo2-01",
                                      style: TextStyle(
                                          // color: Color(0xff292e42),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "SF02 / 10GB",
                                      style: TextStyle(fontSize: 12
                                          // color: Color(0xff292e42),
                                          ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 55,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        "assets/icons/cloud_data.png"),
                                  )),
                                ),
                                SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "ubuntu-s-1vcpu-1gb-blr1-01",
                                      style: TextStyle(
                                          // color: Color(0xff292e42),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "4 GB / 80 GB / SF02",
                                      style: TextStyle(fontSize: 12
                                          // color: Color(0xff292e42),
                                          ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
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
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
